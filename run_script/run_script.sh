if [ -n "$1" ]
then
    script_name=$1
    if [ $# -gt 1 ]
    then
        shift
        chmod +x $script_name
        ./$script_name $*
        chmod -x $script_name
    else
        chmod +x $script_name
        ./$script_name
        chmod -x $script_name
    fi
else
    echo "Usage: ./run_script script_name para1 para2 ..."
fi
