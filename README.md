# FTP site of USTC LUG

## Feature

* Public Sharing
* Private uploading
* User's home (auth via LDAP)

## Supported Protocol

* HTTP/HTTPS (read only)
* SFTP

## Deployment

```shell
docker run -itd --restart=always \
    -p 22:22 \
    -p 80:80 \
    -v $LOCAL_DIR/data:/srv/ftp \
    -v $LOCAL_DIR/log:/var/log \
    -v $LOCAL_DIR/home:/home \
    -e PRIVATE_PASSWD=secret \
    -e PASV_ADDRESS=$PUBLIC_IP_ADDRESS \
    ustclug/ftp
```

### Available Environment Variables

| Name             | Implication                              | Default Value |
| ---------------- | ---------------------------------------- | ------------- |
| PUBLIC_PASSWD    | Password of public account "ftp" (read only) | ftp           |
| PRIVATE_USERNAME | Private account name (write access)      | lug           |
| PRIVATE_PASSWD   | Password of private account              | password      |
| PASV_ADDRESS     | FTP PASV Mode Address                    | 127.0.0.1     |

## Usage

