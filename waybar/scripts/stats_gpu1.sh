#!/bin/bash

usage=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits)
memory_used=$(nvidia-smi --query-gpu=memory.used --format=csv,noheader,nounits)
memory_total=$(nvidia-smi --query-gpu=memory.total --format=csv,noheader,nounits)
memory_percent=$(echo "scale=0; ($memory_used * 100) / $memory_total" | bc)
ICON="󰾲"
TEXT_OUTPUT="$ICON $usage%"
TOOLTIP_OUTPUT="GPU Usage: $usage%\\nMemory: $memory_used/$memory_total MiB ($memory_percent%)"
echo '{"text": "'"$TEXT_OUTPUT"'", "tooltip": "'"$TOOLTIP_OUTPUT"'"}'

