#!/bin/zsh

sh build.sh
zellij --layout layout.kdl
presenterm talk_part2.md -xX --config-file=config.yaml
