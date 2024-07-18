#!/usr/bin/env bash


function get_yaml_prop() {
    local target_file="${1}"
    local full_key_path="${2}"
    local default="${3}"

   "${SNAP}"/bin/yq ".\"${full_key_path}\" // \"${default}\"" "${target_file}"
}
