export DOMAIN="s3.hs.local.io"
export DOMAIN_ADMIN="s3admin.hs.local.io"
export NAME="s3"
export NAME_ADMIN="s3admin"
docker stack deploy -c docker-compose.yml s3