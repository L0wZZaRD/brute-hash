#by created Guilherme Ruiz
#date 26/11/2024
#!/bin/bash

if [ "$1" = "" ];then
	echo "MODO DE USO: $0 (HASH)"
else
	for hash in $(cat passbr); do
		echo "Testando MD5 > $hash"
		result=$(echo -n "$hash" | md5sum | cut -d " " -f1)
		clear
		if  [ "$1" = "$result" ];then
			echo "HASH $hash encontrada!"
			echo "MD5 > $result"
			exit
		else
			loop=0
		fi
	done
fi
