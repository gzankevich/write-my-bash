function log
{
    if [ "$1" = "error" ]; then
        messageText="Error: $2"
    elif [ "$1" = "message" ]; then
        messageText="$2"
    fi

    if [ "$3" = "no-new-line" ]; then
        echo -n $messageText
    else
        echo $messageText
    fi
}

if [ "$CONFIG_DEBUG_MODE" = 1 ]; then
    echo "CONFIG_DEBUG_MODE="
    echo $CONFIG_DEBUG_MODE

    echo "CONFIG_PKG_MANAGER_SYNC="
    echo $CONFIG_PKG_MANAGER_SYNC

    echo "CONFIG_SILENT="
    echo $CONFIG_SILENT

    echo "CONFIG_VERBOSE="
    echo $CONFIG_VERBOSE
fi
