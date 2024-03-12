# SHACL-X Examples

This repository contains the examples shown in the SHACL-X docs, available at [https://shacl-x.github.io/docs/](https://shacl-x.github.io/docs/).


## Structure

The repository is organized as follows
- `data/` contains the data and shapes definition
- `web/` contains the JavaScript/Py functions used in the shapes

## Run the examples
The content of the `web` directory is packed into an `nginx` that is released as docker image through the GitHub Packages registry.

1. Create the docker network
    ```
    docker network create shacl-x
    ```
2. Run the `shacl-x/examples` (nginx) container
    ```
    docker run --network="shacl-x" \
        --name shacl-x-web \
        -p 8080:80 \
        ghcr.io/shacl-x/examples:latest
    ```
3. Run the `shacl-x/shacl-x` container with the `validate` command
    ```
    docker run --rm --network="shacl-x" --name shacl-x-engine \
        -v ${PWD}/data:/data \
        ghcr.io/shacl-x/shacl-x:latest validate \
        -datafile /data/data.ttl \
        -shapesfile /data/shapes.ttl
    ```
