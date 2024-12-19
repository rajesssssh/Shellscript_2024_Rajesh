#!/bin/bash

# Check for the ROLE environment variable
if [ -z "$ROLE" ]; then
  echo "ERROR: ROLE is not set! Use 'developer', 'tester', or 'admin'."
  exit 1
fi

echo "Configuring system for the $ROLE role on Ubuntu..."

case "$ROLE" in
  developer)
    echo "Installing development tools..."
    sudo apt update && sudo apt install -y git build-essential vim
    ;;
  tester)
    echo "Installing testing tools..."
    sudo apt update && sudo apt install -y curl wget jq
    ;;
  admin)
    echo "Installing system administration tools..."
    sudo apt update && sudo apt install -y htop net-tools
    ;;
  *)
    echo "ERROR: Unknown ROLE: $ROLE"
    exit 1
    ;;
esac

echo "System configured successfully for the $ROLE role!"

#export ROLE=developer:tester:admin

