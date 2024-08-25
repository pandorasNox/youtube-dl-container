#!/usr/bin/env sh

func_build() {(
    docker build --file="./Containerfile" --tag local-youtube-dl-container "${BUILD_CONTEXT:-"."}"
)}

if test "${@}" = "build"; then
    func_build
fi
