How to build with Dockerfile ?

# Docker build

workdir : /
```
docker build -t jekyll-blog -f Docker/Dockerfile .
```
# Docker run
```
docker run -d -p 4000:4000 -v ${PWD}:/app --name jekyll-blog jekyll-blog
```