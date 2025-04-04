#!/bin/bash

# Define the root directory
ROOT_DIR="."

# Define subdirectories
DIRS=(
  "$ROOT_DIR/src"
  "$ROOT_DIR/src/config"
  "$ROOT_DIR/src/controllers"
  "$ROOT_DIR/src/middlewares"
  "$ROOT_DIR/src/models"
  "$ROOT_DIR/src/routes"
  "$ROOT_DIR/src/services"
  "$ROOT_DIR/src/utils"
  "$ROOT_DIR/tests"
)

# Create directories
echo "📂 Creating project structure..."
for dir in "${DIRS[@]}"; do
  mkdir -p "$dir"
done

# Create files
echo "📄 Creating necessary files..."
touch "$ROOT_DIR/.env"
touch "$ROOT_DIR/.gitignore"
touch "$ROOT_DIR/package.json"
touch "$ROOT_DIR/README.md"
touch "$ROOT_DIR/src/app.js"
touch "$ROOT_DIR/src/server.js"

# Config files
touch "$ROOT_DIR/src/config/db.js"
touch "$ROOT_DIR/src/config/passport.js"
touch "$ROOT_DIR/src/config/env.js"

# Controllers
touch "$ROOT_DIR/src/controllers/auth.controller.js"
touch "$ROOT_DIR/src/controllers/user.controller.js"

# Middlewares
touch "$ROOT_DIR/src/middlewares/auth.middleware.js"
touch "$ROOT_DIR/src/middlewares/error.middleware.js"

# Models
touch "$ROOT_DIR/src/models/user.model.js"

# Routes
touch "$ROOT_DIR/src/routes/auth.routes.js"
touch "$ROOT_DIR/src/routes/user.routes.js"

# Services
touch "$ROOT_DIR/src/services/auth.service.js"
touch "$ROOT_DIR/src/services/user.service.js"

# Utils
touch "$ROOT_DIR/src/utils/jwt.js"
touch "$ROOT_DIR/src/utils/hash.js"
touch "$ROOT_DIR/src/utils/response.js"

# Tests
touch "$ROOT_DIR/tests/auth.test.js"
touch "$ROOT_DIR/tests/user.test.js"

echo "✅ Auth microservice directory structure created successfully!"
