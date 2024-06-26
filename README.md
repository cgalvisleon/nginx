### Init git

Form init git used this command

```
git init
```

## Add remote repository

```
git remote add origin https://github.com/cgalvisleon/nginx.git
```

## Review remote repository

```
git remote -v
```

### Clone repository

```
git clone https://github.com/cgalvisleon/nginx.git nginx
```

### Commit repository

```
git add .
git commit "message commit"
git push -u origin
```

### Build image

```
docker build --no-cache -t my-nginx -f ./Dockerfile .
```

### Deploy with docker-compose

```
docker-compose -p my-nginx -f ./nginx.yml up -d
docker-compose -p my-nginx -f ./nginx.yml down
```

### Deploy with docker swarm

```
docker build --no-cache -t my-nginx -f ./Dockerfile .
docker stack deploy -c ./nginx.yml nginx
docker service ls
```

## Tags

```
git update
git tag 1.0
git push -u origin --tags
```

## Set config network bridge

```
docker network create \
  --driver overlay \
  --subnet 172.31.188.0/26 \
  --gateway 172.31.188.1 \
  my_custom_network

docker stack rm nginx
docker stack deploy -c ./local.yml nginx

docker stack deploy -c ./prd.yml nginx
```
