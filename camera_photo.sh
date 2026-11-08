#!/bin/bash

set -e

OUTPUT="camera_$(date +%Y%m%d_%H%M%S).jpg"

echo "======================================"
echo " Robomal Raspberry Pi Camera"
echo " Image Capture"
echo "======================================"

echo ""
echo "Capturing image..."
echo "Output: $OUTPUT"
echo ""

rpicam-still -o "$OUTPUT"

echo ""
echo "======================================"
echo " Image captured successfully"
echo "======================================"
echo ""
echo "File: $OUTPUT"

file "$OUTPUT"
