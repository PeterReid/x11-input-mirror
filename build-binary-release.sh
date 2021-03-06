#!/bin/bash
rm x11-input-mirror.zip
rm -rf tmp
mkdir tmp
mkdir tmp/x11-input-mirror
cargo +nightly build --release
cp target/release/grabber tmp/x11-input-mirror/
cp target/release/server tmp/x11-input-mirror/
cp GrabberConfig.toml tmp/x11-input-mirror/
cp SecurityConfig.toml tmp/x11-input-mirror/
cp ServerConfig.toml tmp/x11-input-mirror/
cp README.md tmp/x11-input-mirror/
cd tmp
7z a -tzip -mx1 x11-input-mirror.zip x11-input-mirror
cd ..
mv tmp/x11-input-mirror.zip .
rm -rf tmp
