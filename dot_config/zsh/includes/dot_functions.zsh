# Open
function o {
if [ $# -lt 1 ]
    then
        xdg-open .
    fi
        xdg-open $1
}

# Fleet
function f {
if [ $# -lt 1 ]
    then
        fleet .
    fi
        fleet $1
}

# Intellij
function int {
if [ $# -lt 1 ]
    then
        idea .
    fi
        idea $1
}

# Gitlab VFZ

# ll + search
function ll {
    if [ $# -lt 1 ]
        then
            ls -all
    fi
        ls -all | grep -c -i "$1"
        ls -all | grep -i "$1"
        # Add redirect function if 1 record
#        if [ ${ls -all | grep -c -i "$1"} = 1 ]
#            then
#                cd | grep -i "$1"
#        fi
#            ls -all | grep -c -i "$1"
#            ls -all | grep -i "$1"
}
