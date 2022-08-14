# Build image
docker build -t cygnus7/nginx-curl .

# Push image
docker push cygnus7/nginx-curl

# Create container
docker container create --name nginx-curl cygnus7/nginx-curl

# Start container
docker container start nginx-curl

# See container logs
docker container logs -f nginx-curl

# Stop container
docker container stop nginx-curl

# Remove container
docker container rm nginx-curl
Footer
© 2022 GitHub, Inc.
Footer navigation
Terms
Privacy
# Build image
docker build -t cygnus7/nginx-curl .

# Push image
docker push cygnus7/nginx-curl

# Create container
docker container create --name nginx-curl cygnus7/nginx-curl

# Start container
docker container start nginx-curl

# See container logs
docker container logs -f nginx-curl

# Stop container
docker container stop nginx-curl

# Remove container
docker container rm nginx-curl
