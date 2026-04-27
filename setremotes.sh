#!/bin/bash
while read -r dir id remote; do
    if [[ "$dir" != "" ]]; then
        pushd $dir >> /dev/null
	    echo git remote add $id $remote
	popd >> /dev/null
    fi
done < remotes
