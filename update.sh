#!/bin/zsh

function update-basebox() {
  echo "🔄 Updating Basebox toolkit..."
  
  # Temporary directory for download
  local TMP_DIR="$HOME/basebox_tmp"
  mkdir -p "$TMP_DIR"

  # Download the latest ZIP from GitHub
  echo "📥 Downloading latest scripts..."
  if curl -L https://github.com/sina3p2p/basebox/archive/refs/heads/main.zip -o "$TMP_DIR/basebox.zip"; then
    
    # Extract
    unzip -q "$TMP_DIR/basebox.zip" -d "$TMP_DIR"
    
    # Replace the old folder with the new one
    rm -rf "$HOME/.basebox"
    mv "$TMP_DIR/basebox-main" "$HOME/.basebox"
    
    # Cleanup
    rm -rf "$TMP_DIR"
    
    # Reload terminal
    source ~/.zshrc
    echo "✅ Basebox updated successfully! Your scripts are now fresh."
  else
    echo "❌ Error: Could not download update. Check your internet connection."
    rm -rf "$TMP_DIR"
  fi
}
