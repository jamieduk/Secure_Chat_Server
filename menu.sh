#!/bin/bash
# (c) J~NET 2021
# jnet.sytes.net
#
#
#
echo "Online Multi-User Chat Room Style Messenger 2021 - 2025"
echo ""
select fname in *.sh;
do
	echo you picked $fname \($REPLY\)
	bash $fname $myvar	
	break;
done
