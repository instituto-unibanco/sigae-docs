#!/bin/bash

# Ensure the output directory exists
mkdir -p docs

# Loop through each openapi.yaml file in subdirectories of "apis"
for file in apis/*/openapi.yaml; do
    # Extract the API name (parent directory name)
    api_name=$(basename "$(dirname "$file")")

    # Define output file path
    output_file="docs/${api_name}.html"

    # Run redocly build-docs command
    echo "Building docs for $api_name..."
    redocly build-docs "$file" -o "$output_file"
done