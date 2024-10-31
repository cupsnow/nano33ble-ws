#!/bin/bash
# shellcheck disable=SC2120

_pri_projdir="$(pwd)"
_pri_cmd_bossac="${HOME}/.arduino15/packages/arduino/tools/bossac/1.9.1-arduino2/bossac"

ts_up () {
  _lo_ts1="$(</proc/uptime awk '{ print $1 }')"
  echo "${_lo_ts1} * 1000 / 1" | bc
}

ts_dt () {
  date "+%y-%m-%d %H:%M:%S"
}

log_e () {
  _lo_ts="[$(ts_dt)]"
  echo "${_lo_ts}[ERROR] $*"
}

log_d () {
  _lo_ts="[$(ts_dt)]"
  echo "${_lo_ts}[Debug] $*"
}

cmd_run () {
  log_d "Execute: $*"
  "$@"
}

# Setup develop environment.
#
env_zephyr () {
  cmd_run cd "${_pri_projdir}" || { log_e "Failed enter projdir ${_pri_projdir}"; return 1; }
  [ -d .venv ] || cmd_run python3 -m venv .venv || { log_e "Failed create venv"; return 1; }
  cmd_run source .venv/bin/activate || { log_e "Failed activate venv"; return 1; }
  cmd_run pip install west || { log_e "Failed install west"; return 1; }
  cmd_run west update || { log_e "Failed west update"; return 1; }
  cmd_run pip install -r zephyr/scripts/requirements.txt || { log_e "Failed install zephyr requirements"; return 1; }
  cmd_run cd zephyr
  cmd_run west sdk install -t arm-zephyr-eabi -b "${_pri_projdir}"
}

run_bossac () {
  ${_pri_cmd_bossac} "$@"
}

# The cli example from Arduino IDE 2.x .
# /home/joelai/.arduino15/packages/arduino/tools/bossac/1.9.1-arduino2/bossac \
# -d --port=ttyACM0 -U -i -e -w \
# "/tmp/arduino/sketches/68B438100E0A4BC09AD72FCDEFD3CB32/test1.ino.bin" -R
#
bossac_upload () {
  [ $# -ge 1 ] || { log_e "Invalid argument"; return 1; }

  _lo_arg_port=
  for i in ttyACM0 ttyACM1; do
    if [ -c "/dev/${i}" ]; then
      _lo_arg_port=${i}
    fi
  done

  ${_pri_cmd_bossac} ${_lo_arg_port:+--port $_lo_arg_port} \
      -i -U -d -R -e -w "$@"
}

_pri_dev_fw="${_pri_projdir}/zephyr/build/zephyr/zephyr.bin"
_pri_dev_dir="${_pri_projdir}/zephyr/samples/basic/blinky"

dev_build () {
  _lo_dev_dir="${1:-$(realpath "--relative-to=$(pwd)" "${_pri_dev_dir}")}"
  west build -b arduino_nano_33_ble "${_lo_dev_dir}"
}

dev_upload () {

  bossac_upload "$_pri_dev_fw"
}

show_help () {

  _lo_cmd_bossac="${_pri_cmd_bossac}"

  cat <<-_LO_EOHEREDOC
USAGE
  ${1:-$(basename $0)} [OPTIONS] [COMMAND [-- COMMAND_OPTIONS]]

OPTIONS
  --help   Show this help

COMMAND
  run_bossac
    - Run: $_lo_cmd_bossac
  bossac_upload -- <FW>
    - Upload the <FW>
  dev_upload
    - Upload $_pri_dev_fw

_LO_EOHEREDOC
}

_pri_opts="$(getopt -l "help" -- h "$@")" || exit 1

eval set -- "$_pri_opts"
while [ -n "$1" ]; do
  case "$1" in
  -h|--help)
    shift
    show_help
    exit 1
    ;;
  --)
    shift
    break
    ;;
  esac
done

log_d "Run command: $*"

if [ -z "$1" ] || ! typeset -F | grep -q "declare -f $1"; then
  show_help
  exit 1
fi

"$@"
