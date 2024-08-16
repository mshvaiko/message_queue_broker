#!/bin/bash
# Update the package list
sudo apt update
# Packages array to install
packages=(erlang rabbitmq-server)
# Install packages
sudo apt install "${packages[@]}"
# Update package list after install
sudo apt update
# Start the RabbitMQ service
sudo systemctl start rabbitmq-server
# Enable RabbitMQ service to start on boot:
sudo systemctl enable rabbitmq-server