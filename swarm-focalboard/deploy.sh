export DOMAIN="bord.hs.local.io"
docker-compose build --no-cache
docker stack deploy -c docker-compose.yml bord

echo "open http://$DOMAIN"