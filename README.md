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
