#!/bin/sh

set -e

WELCOME_MESSAGE="
👋 Welcome to the \"PayPal Advanced Checkout Integration Example\"

🛠️  Your environment is fully setup with all the required software.

🚀 Once you rename the \".env.example\" file to \".env\" and update \"CLIENT_ID\" and \"CLIENT_SECRET\", the checkout page will automatically open in the browser after the server is restarted."

ALTERNATE_WELCOME_MESSAGE="
👋 Welcome to the \"PayPal Advanced Checkout Integration Example\"

🛠️  Your environment is fully setup with all the required software.

🚀 The checkout page will automatically open in the browser after the server is started."

if [ -n "$CLIENT_ID" ] && [ -n "$CLIENT_SECRET" ]; then
    WELCOME_MESSAGE="${ALTERNATE_WELCOME_MESSAGE}"
fi

#sudo bash -c "echo \"${WELCOME_MESSAGE}\" > /usr/local/etc/vscode-dev-containers/first-run-notice.txt"

# Path to the output file
output_file="first-run-notice.txt"

# Write the welcome message to the output file
echo "${WELCOME_MESSAGE}" > "${output_file}"
# echo "${WELCOME_MESSAGE}"
