export NAME="nexus"
export NAME_ADMIN="nexus-admin"
export DOMAIN="docker.hs.local.io"
export DOMAIN_ADMINN="nexus.hs.local.io"
docker stack deploy -c docker-compose.yml nexus