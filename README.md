# docker-airvideoserverhd

This is a docker contaienr of Air Video Server HD for Linux (CentOS 7)

## Usage

    docker run --name airvideoserverhd -d \
        -p 45633:45633 \
        -v /tmp/video:/video \
        -v /tmp/config:/config \
        kinumi/airvideoserverhd

## NOTE

### exporsed ports

* 45633


### volumes

* /config
* /video


### config file

* /config/Server.properties
  * It's auto generated if not exists.


### user account

A default userAccount is user/1234

    # mutliuser mode (true/false)
    multiUserMode = true
    
    # single user mode password
    # singleUserPassword =
    
    # first user account (can access all folders, no password)
    userAccounts1.accessAllFolders = true
    userAccounts1.allowedFolders =
    userAccounts1.userName = user
    userAccounts1.password = 1234
