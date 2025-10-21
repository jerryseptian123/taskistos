#!/bin/bash
ENV_FILE=".env"

if [ ! -f "$ENV_FILE" ]; then
  PORT=$((RANDOM % 1000 + 8000))
  echo "WS_PORT=$PORT" > "$ENV_FILE"
  echo "Generated new port: $PORT"
else
  PORT=$(grep "^WS_PORT=" "$ENV_FILE" | cut -d '=' -f2)
  echo "Using existing port: $PORT"
fi

export WS_PORT=$PORT
npm run start
