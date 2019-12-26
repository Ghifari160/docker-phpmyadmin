# phpMyAdmin on Docker #
[![](https://img.shields.io/badge/docker%20hub-ghifari160%2Fphpmyadmin-6C78AF.svg)](https://hub.docker.com/r/ghifari160/phpmyadmin)
[![](https://images.microbadger.com/badges/image/ghifari160/phpmyadmin.svg)](https://microbadger.com/images/ghifari160/phpmyadmin "Get your own image badge on microbadger.com")

Manage your database server from a [Docker][docker] container.

## Why Use This Image ##
This image is built on [ghifari160/apache-php73][g16-apache-php73], which forces
Apache to run in the foreground and output its log into the container's stdio to
aid in debugging. This container is also equipped with a powerful init script
that will automatically configure [phpMyAdmin][pma] for installation if no
instance is found (the script will exit if the phpMyAdmin instance is already
installed).

## Installation ##
By default, this image should be run as a daemon.
```
docker run -d ghifari160/phpmyadmin
```
However, this image can be run in the foreground for debug purposes.
```
docker run -it ghifari160/phpmyadmin
```

**This image must be [linked](#link-to-another-container) to a database server
or a container running a database server.**

### Further Configurations ###
#### Name your container ####
Add this parameter: `--name <name>`
Example:
```
docker run --name phpmyadmin -d ghifari160/phpmyadmin
```

#### Store the Wordpress instance in a predetermined location of your own choosing ####
Add this parameter: `-v /path/on/host:/var/www/html`
Example:
```
docker run -d -v /path/on/host:/var/www/html ghifari160/phpmyadmin
```

#### Change the port on your container ####
Use the parameter `-p <port on host>:80` to map the container's port to another
port on the host machine.
Example:
```
docker run -d -p 8080:80 ghifari160/phpmyadmin
```

#### Link to another container ####
Use the parameter `--link=<target name>` to link the container to another
container.
Example:
```
docker run --link=mysql -d ghifari160/phpmyadmin
```

## Tags ##
All deprecated tags will be removed at the next update.
| Tags                      | Ubuntu Version | Size              |
|---------------------------|----------------|:-----------------:|
| `v4` `v4.9.3`             | 18.04          |[![](https://images.microbadger.com/badges/image/ghifari160/phpmyadmin:v4.9.3.svg)](https://microbadger.com/images/ghifari160/phpmyadmin:v4.9.3 "Get your own image badge on microbadger.com")|
| `latest` `v5` `v5.0.0`    | 18.04          |[![](https://images.microbadger.com/badges/image/ghifari160/phpmyadmin:v5.0.0.svg)](https://microbadger.com/images/ghifari160/phpmyadmin:v5.0.0 "Get your own image badge on microbadger.com")|
| `16.04` `xenial`          | 16.04          | **DEPRECATED**    |
| `17.10` `artful`          | 17.10          | **NOT SUPPORTED** |
| `18.04` `bionic`          | 18.04          | **DEPRECATED**    |

[docker]: https://www.docker.com
[g16-apache-php73]: https://github.com/ghifari160/docker-apache-php73
[pma]: https://www.phpmyadmin.net
