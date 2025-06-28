#!/bin/zsh

(cd ~/dev/ratatui/examples/apps/demo2 && cargo build --release)
(cd ~/dev/ratatui/examples/apps/popup && cargo build --release)
(cd ~/dev/tachyonfx && cargo build --release --example tweens)
(cd ~/dev/bevy_ratatui_camera && cargo build --release --example world_space)
(cd ~/dev/soft_ratatui/bevy_cube_example && cargo build --release)
