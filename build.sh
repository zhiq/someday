#!/bin/bash
set -e

echo "Building backend..."
pushd backend
npm run build
popd
echo "Backend built successfully!"
pushd frontend
npm run build
popd
echo "Frontend built successfully!"

rm -rf dist/*
cp backend/dist/* dist/
cp frontend/dist/* dist/

echo "Build complete!"

