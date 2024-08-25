# youtube-dl ins a container

## usage example

``` shell
# build container image
./do build

# run youtube-dl
docker run -t --rm \
  -v="$(pwd)/out:/workdir/out" \
  local-youtube-dl-container \
  -i --extract-audio --audio-format mp3 --audio-quality 0 --format 18 --exec 'mv {} /workdir/out' "URL"
```
