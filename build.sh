#!/bin/bash

# clear previous zip
rm lambda.zip

# npm install
npm i

# build
npm run build

# only install production dependencies for production build
npm install --omit=dev

# zip index.js
cd dist && zip -r ../lambda.zip index.js && cd ..

# zip node_modules
zip -r lambda.zip node_modules/ -g

# install all dependencies again to ensure vs.code resolves them
npm i

echo "✅ build completed. zipped lambda.zip"
