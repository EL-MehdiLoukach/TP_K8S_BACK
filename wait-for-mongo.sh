#!/bin/sh
# wait-for-mongo.sh

set -e

# Function to check if MongoDB is available
check_mongo() {
  curl --silent mongodb-service-init:27017 > /dev/null 2>&1
}

# Wait until MongoDB is up
until check_mongo; do
  echo "Waiting for MongoDB..."
  sleep 3
done

echo "MongoDB is up and running!"
exec "$@"
