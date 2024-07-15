#!/usr/bin/env bash


function get_yaml_prop() {
    local target_file="${1}"
    local full_key_path="${2}"
    local default="${3}"

    value=$( cat $target_file | grep -v "^#" | grep $full_key_path | tr -s [:blank:] | cut -d' ' -f 2 )

    if [ $value ]
    then
        echo $value
        return
    fi
    echo $default
}
