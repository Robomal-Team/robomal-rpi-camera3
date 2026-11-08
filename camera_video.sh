#!/bin/bash

set -e

OUTPUT="camera_$(date +%Y%m%d_%H%M%S).h264"

echo "======================================"
echo " Robomal Raspberry Pi Camera"
echo " Video Recording"
echo "======================================"

echo ""
echo "Recording video for 10 seconds..."
echo "Output: $OUTPUT"
echo ""

rpicam-vid -t 10000 -o "$OUTPUT"

echo ""
echo "======================================"
echo " Video recorded successfully"
echo "======================================"
echo ""
echo "File: $OUTPUT"

file "$OUTPUT"
ls -lh "$OUTPUT"
