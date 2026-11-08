#!/bin/bash

set -e

echo "======================================"
echo " Robomal Raspberry Pi Camera Check"
echo "======================================"

echo ""
echo "[1] Checking rpicam tools..."

if ! command -v rpicam-hello >/dev/null 2>&1; then
    echo "ERROR: rpicam-hello is not installed."
    exit 1
fi

if ! command -v rpicam-still >/dev/null 2>&1; then
    echo "ERROR: rpicam-still is not installed."
    exit 1
fi

if ! command -v rpicam-vid >/dev/null 2>&1; then
    echo "ERROR: rpicam-vid is not installed."
    exit 1
fi

echo "OK: rpicam tools detected."

echo ""
echo "[2] Detecting cameras..."
echo ""

rpicam-hello --list-cameras

echo ""
echo "======================================"
echo " Camera check completed"
echo "======================================"
