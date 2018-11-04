# Docker with Xvfb (xvfbdc)

A minimal example on how to run a docker container app with GUI on an Xvfb.

## Instructions

```
git clone git@github.com:goncalo-godwitlabs/xvfbdc.git
cd xvfbdc/
make build
make run
```

A frame was dumped into `mount/shot.xwd`. In order to view it run:

```
xwud -in ./mount/shot.xwd
```

or convert it to JPEG and open with a common image viewer:

```
convert mount/shot.xwd shot.jpg
xdg-open shot.jpg
```
