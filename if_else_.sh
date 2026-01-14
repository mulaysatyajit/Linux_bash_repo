#!/bin/bash

<<disclaimer
	This is only for entertainment purpose 
disclaimer

read -p "Jethalal ne mud ke kise dekha: " bandi
read -p "Jethalal ka pyaar kitna hai: " pyaar

if [[ $bandi == "daya bhabhi" ]];
then
	echo "Jetha is loyal"
elif [[ $pyaar -ge 80 ]];
then
	echo "Jetha is still loyal for $bandi"
else
	echo "Jetha is not loyal"
fi

