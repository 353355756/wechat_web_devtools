#! /bin/bash

root_dir=$(cd `dirname $0`/.. && pwd -P)

dev_tools_config_dir="$HOME/.config/微信web开发者工具"
dist_dir="$root_dir/dist"

if [ ! -d "$dev_tools_config_dir" ]; then
  cd "$dist_dir";
  ./nw &

  nw_pid=$!

  echo "please wait 5s!"
  for k in $( seq 1 5 ); do
    sleep 1s && echo "${k}s"
  done
  echo "kill nw"

  kill -9 $nw_pid
fi

if [ -d "$dev_tools_config_dir" ]; then
  echo "cp -rfu $root_dir/scripts/WeappVendor/* $dev_tools_config_dir/WeappVendor"
  cp -rf $root_dir/scripts/WeappVendor/* "$dev_tools_config_dir/WeappVendor" 2> /dev/null
  echo "Success"
else
  echo "Fail! Please reinstall"
fi
