# Kobe Accra Server with FIWARE (docker-compose)

- Orion Broker (port 1026)
- Cygnus (port 5080)
- MongoDB (port 27017)
- Mosquitto (port 1883)
- IoTAgent (port 4041)

Ports 1026 and 1883 must be exposed for external applications.

This server is an extention of the following tutorials:
- https://github.com/Fiware/tutorials.IoT-over-MQTT/blob/master/README.md
- https://github.com/Fiware/tutorials.Historic-Context/blob/23cd4a2eea86805581757492e03202d5a8b86ee4/README.md

Note: We removed the Context-Provider included in these tutorials.

# Requirements:

- Ubuntu 18.04
- Docker-ce 18.06.1
- Docker Compose 1.22.0

# Docker and Docker Compose

How to install Docker-CE for Ubuntu 18.04: 
- https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce-1

How to install Docker Compose for Ubuntu 18.04:
- https://docs.docker.com/compose/install/#install-compose

You may save the following scripts for bash to install docker-ce and docker-compose.

```
apt-get update
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - 
apt-key fingerprint 0EBFCD88
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install docker-ce
curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
```

# Initialization

```
% git clone https://github.com/royalcrab/accra_kobe/
% cd accra_kobe
% sudo ./services create
```

# Starting Servives

```
% sudo ./serviecs start
```

# Stopping Servives

```
% sudo ./services stop
```

