# fandogh-service-deploy-action
A GitHub action to deploy services in [fandogh cloud](https://www.fandogh.cloud/).

## Action inputs

## Inputs

### `username` fandogh cloud username
### `password` fandogh cloud password
### `image_name` name of the [image](https://docs.fandogh.cloud/docs/images.html) to publish
### `image_version` version of image, can be any valid string for container tag
### `path_to_service_file` path service manifest file like `./service.yml` if it's in root of the repository

## Example usage

```yaml
name: Deploy
on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: deploy action step
        uses: Glyphack/fandogh-service-deploy-action@v1
        with:
          username: ${{ secrets.FANDOGH_USERNAME }}
          password: ${{ secrets.FANDOGH_PASSWORD }}
          image_name: my_image
          image_version: v1
          path_to_service_file: ./service.yml

```

## Notes
### service.yml
your `service.yml` file most specify the service image like example below:
```yml
...
spec:
  image: <IMAGE:VERSION>
...
```
