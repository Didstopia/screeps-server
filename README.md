# Screeps Server for Docker

A public image for easily running a dedicated Screeps server as a Docker container.

## Usage

By default, the image will run `screeps start`, but you can override this with the Docker command override, and you'll want to do this once for `screeps init` (the Docker command would just be `init`), in order to setup the server with the Steam API key etc.  
Likewise, you can customize the usual Screeps server startup parameters by simply appending them to the Docker command (eg. `start --help`).

Optionally you can add data persistence by mounting the `/app/` directory as a Docker volume.

## License

See [LICENSE](LICENSE).
