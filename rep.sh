oldpath='/lib';
newpath='/home/vasily/rpi/rootfs3/lib';
find ./opt -type l -execdir bash -c 'p="$(readlink "{}")"; if [ "${p:0:1}" != "/" ]; then p="$(echo "$(pwd)/$p" | sed -e "s|/\./|/|g" -e ":a" -e "s|/[^/]*/\.\./|/|" -e "t a")"; fi; if [ "${p:0:'${#oldpath}'}" == "'"$oldpath"'" ]; then ln -sf "'"$newpath"'${p:'${#oldpath}'}" "{}"; fi;' \;
