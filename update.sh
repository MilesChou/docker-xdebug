#!/usr/bin/env bash

generated_warning() {
	cat <<-EOH
		#
		# NOTE: THIS DOCKERFILE IS GENERATED VIA "update.sh"
		#
		# PLEASE DO NOT EDIT IT DIRECTLY.
		#
	EOH
}

VERSIONS="
5.6
5.5
7.0
7.1
7.2
7.3
7.4
8.0
8.1
8.2
8.3
8.4
"

for version in ${VERSIONS}; do
    main_version=$(echo "${version}" | cut -f1 -d.)

    if [[ "$main_version" == "5" ]]; then
        xdebug_version=xdebug-2.5.5
    elif [[ "$version" == "7.0" ]]; then
        xdebug_version=xdebug-2.9.0
    elif [[ "$version" == "7.1" ]]; then
        xdebug_version=xdebug-2.9.8
    elif [[ "$version" == "7.2" ]]; then
        xdebug_version=xdebug-3.1.6
    elif [[ "$version" == "7.3" ]]; then
        xdebug_version=xdebug-3.1.6
    elif [[ "$version" == "7.4" ]]; then
        xdebug_version=xdebug-3.1.6
    else
        xdebug_version=xdebug
    fi

    if [[ "$main_version" == "8" ]]; then
        alpine_file=Dockerfile-alpine-8.template
    else
        alpine_file=Dockerfile-alpine.template
    fi

    rm -rf "${version}"
    mkdir -p "${version}"
    mkdir -p "${version}"/alpine
    mkdir -p "${version}"/apache

    generated_warning > "${version}"/Dockerfile
    cat Dockerfile-cli.template | \
        sed -e 's!%%PHP_VERSION%%!'"${version}"'!' | \
        sed -e 's!%%XDEBUG_VERSION%%!'"${xdebug_version}"'!' \
        >> "${version}"/Dockerfile


    generated_warning > "${version}"/alpine/Dockerfile
    cat ${alpine_file} | \
        sed -e 's!%%PHP_VERSION%%!'"${version}-alpine"'!' | \
        sed -e 's!%%XDEBUG_VERSION%%!'"${xdebug_version}"'!' \
        >> "${version}"/alpine/Dockerfile

    generated_warning > "${version}"/apache/Dockerfile
    cat Dockerfile-apache.template | \
        sed -e 's!%%PHP_VERSION%%!'"${version}-apache"'!' | \
        sed -e 's!%%XDEBUG_VERSION%%!'"${xdebug_version}"'!' \
        >> "${version}"/apache/Dockerfile
done
