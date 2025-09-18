#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "🔧 Starting Terraform workflow..."

# Initialize Terraform
echo "🚀 Running terraform init..."
terraform init

# Create a plan
echo "📋 Running terraform plan..."
terraform plan -out=tfplan

# Apply the plan
echo "✅ Running terraform apply..."
terraform apply tfplan

echo "🎉 Docker container created successfully!"
