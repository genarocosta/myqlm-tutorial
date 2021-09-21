# myqlm-tutorial

Simple myQLM tutorial

## container build

```
docker build . -t myqlm
```

## Running the container
```
docker run -it --rm -p 8899:8899 myqlm
```

## Alternate running : using the image built on dockerhub
```
docker run -it --rm -p 8899:8899 gfccosta/myqlm
```
## Documentation about the myQLM
https://myqlm.github.io/
