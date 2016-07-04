DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$DIR/config.sh"

    source "$DIR/debug.sh"
    source "$DIR/vcs.sh"
    source "$DIR/plugin.sh"
    source "$DIR/distro.sh"

        source "$DIR/package.sh"

function execute
{
    if [ "$CONFIG_DEBUG_MODE" = 1 ]; then
        set -x
        "$@" 
        set +x
    elif [ "$CONFIG_SILENT" = 1 ]; then
        "$@" > /dev/null 2>&1
    elif [ "$CONFIG_VERBOSE" = 1 ]; then
        "$@"
    else
        "$@" > /dev/null 
    fi

    # exit script on failure
    if [ $? != 0 ]; then
        echo "Error! The last command was:"
        echo $@
        exit 1
    fi
}

function enforceRoot
{
	if [ `whoami` != "root" ]; then
		echo "Run this as root!"
		exit 1
	fi
}

function replaceFileWithSymlink
{
	# TODO implement
    echo "Implement me"; exit 1;
}

function isSourced 
{
    [[ $0 != "$1" ]] && echo 1 || echo 0
}
