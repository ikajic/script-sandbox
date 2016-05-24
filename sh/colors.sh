#!/bin/bash

echo "Printing foreground colors in bash"
echo "Use echo with -e \033[COLOR1m"

for i in {30..37}
do
	echo -e "\033[0;${i}mHello, today is `date` ($i)"
done
