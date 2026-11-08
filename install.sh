#!/bin/bash

set -e

echo "======================================"
echo " Robomal Raspberry Pi Camera 3 Setup"
echo "======================================"

echo ""
echo "[1/3] Checking rpicam tools..."

if ! command -v rpicam-hello >/dev/null 2>&1; then
    echo "rpicam-apps not found."
    echo "Installing rpicam-apps..."

    sudo apt update
    sudo apt install -y rpicam-apps
fi

echo "OK: rpicam tools detected."

echo ""
echo "[2/3] Checking camera..."

rpicam-hello --list-cameras

echo ""
echo "[3/3] Camera setup completed successfully."

echo ""
echo "Available commands:"
echo "  ./check_camera.sh"
echo "  ./camera_photo.sh"
echo "  ./camera_video.sh"

echo ""
echo "======================================"
echo " Robomal Camera Setup Complete"
echo "======================================"
