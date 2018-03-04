#!/usr/bin/env bash

brew update

LIST=(python2 cmake sdl2 sdl2_ttf lua boost)

for dep in "${LIST[@]}"; do
  bash -x brew info "${dep}" | grep --quiet 'Not installed' && brew install "${dep}"
done

exit 0
