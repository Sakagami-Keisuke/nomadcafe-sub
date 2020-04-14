#!/bin/bash
set -e

# デモデータの投入
bundle exec rake db:seed_fu

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"