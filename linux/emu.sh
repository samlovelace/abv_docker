#!/bin/bash
set -e

# Step 1: Enable QEMU emulation for ARM
docker run --rm --privileged multiarch/qemu-user-static --reset -p yes

# Step 2: Ensure buildx is ready (one-time setup, you can skip if already done)
docker buildx create --name arm-builder --use 2>/dev/null || true
docker buildx inspect --bootstrap

# Step 3: Build the image for ARM64
docker buildx build --platform linux/arm64 -f dockerfile-arm -t arm-ubuntu-22 . --load

# Step 4: Run the ARM64 container
docker run --rm -it --platform linux/arm64 arm-ubuntu-22 bash
