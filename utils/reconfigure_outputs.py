#!/usr/bin/env python3

import subprocess
import json

current_output_config: list[dict[str, str]] = json.loads(
    subprocess.check_output(["swaymsg", "-t", "get_outputs", "-r"])
)
output_names = [output["name"] for output in current_output_config]

laptop_output = None
for output in output_names:
    if output.startswith("eDP"):
        laptop_output = output

if len(output_names) > 1:
    subprocess.run(["swaymsg", "output", laptop_output, "disable"])
