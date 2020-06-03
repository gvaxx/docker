# ft_server

# Build image
docker image build -t ft_server .

# Clear
docker system prune -a

# Run container
docker run -d -p 443:443 -p 80:80 ft_server
docker run -it -p 443:443 -p 80:80 ft_server

#turnoff autoindex
#you can enable or disable autoindex interactivly (bash switch_autoindex.sh)
docker run -it -e SWITCH=1 -p 443:443 -p 80:80 ft_server

# Stop container
docker container stop ft_server

# Running containers
docker ps

#Feel free to change admin and passwrod in mysql database(file "mysql.conf")
