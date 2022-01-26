export HASHED_PASSWORD=$(openssl passwd -apr1 "xd123")
export DOMAIN="traefik.hs.local.io"
docker stack deploy -c docker-compose.yml traefik