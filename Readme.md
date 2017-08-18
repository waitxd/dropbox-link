# Dropbox-link

Docker image that helps you  link virtual computer to your Dropbox account.  
Based on Alpine Linux.

[![](https://images.microbadger.com/badges/image/waitxd/dropbox-link.svg)](https://microbadger.com/images/waitxd/dropbox-link)

## Usage:

### Running image:
```sh
$ docker run -it --mac-address="00:00:00:00:00:00" --rm waitxd/dropbox-link
```
Modify (or remove) mac-address parameter according your needs.  

### Output:
```
https://www.dropbox.com/cli_link_nonce?nonce=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```

Use generated link in browser to finish linking.