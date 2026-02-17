#!/bin/zsh

function docker-clean() {
    # Get all containers in a clean list
    local containers=($(docker ps -a --format "{{.Names}}"))
    
    if [ ${#containers[@]} -eq 0 ]; then
        echo "📭 No containers found."
        return
    fi

    echo "🔍 Select a container to REMOVE (or type 'q' to quit):"
    
    # Use native Zsh select to create a numbered menu
    select container in "${containers[@]}"; do
        if [ "$REPLY" = "q" ]; then
            echo "Exiting."
            break
        elif [ -n "$container" ]; then
            echo "⚠️  Removing $container..."
            docker rm -f "$container"
            echo "✅ Done."
            # Remove the item from the list so the menu stays accurate
            break 
        else
            echo "❌ Invalid selection. Please pick a number from the list."
        fi
    done
}
