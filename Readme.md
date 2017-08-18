# Dropbox-link

Docker image to link virtual computer to your Dropbox account. Based on Alpine Linux.

## Usage:

```sh
$ docker build -t dropbox .
$ docker run -it --mac-address="00:00:00:00:00:00" --rm dropbox
https://www.dropbox.com/cli_link_nonce?nonce=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```
Modify (or remove) mac-address parameter according your needs.
