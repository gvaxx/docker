cd /etc/nginx/sites-enabled/
VAR=$(grep autoindex default)
VAR=$(echo $VAR)
if [ "$VAR" = "autoindex off;" ]; then
	echo "turn on"
	awk '{gsub("autoindex off;", "autoindex on;");print $0}' default > tmp
	mv tmp default
	service nginx restart
elif [ "$VAR" = "autoindex on;" ]; then
	echo "turn off"
	awk '{gsub("autoindex on;", "autoindex off;");print $0}' default > tmp
	mv tmp default
	service nginx restart
else 
	echo "Your nginx doesn't use autoindex"
fi
