# Kobe Accra Server with FIWARE (docker-compose)

- Orion Broker (port 1026)
- Cygnus (port 5080)
- MongoDB (port 27017)
- Mosquitto (port 1883)
- IoTAgent (port 4041)
- Keyroc (port 3005)
- Squid (port 80): connecting to orion (1026)
- Mysql (port 3306): connecting to Keyroc

Ports 1883 must be exposed for external applications at least.

This server is an extention of the following tutorials:
- MQTT/IoTAgent https://github.com/Fiware/tutorials.IoT-over-MQTT/blob/master/README.md
- Historic Content: https://github.com/Fiware/tutorials.Historic-Context/blob/23cd4a2eea86805581757492e03202d5a8b86ee4/README.md
- Securing-Access： https://github.com/Fiware/tutorials.Securing-Access/blob/10fad443d3303949c2f106523986ab2224aa1fb4/README.ja.md

Note: We removed the Context-Provider included in these tutorials.

# Requirements:

- Ubuntu 18.04
- Docker-ce 18.06.1
- Docker Compose 1.22.0

# Install Docker and Docker Compose

How to install Docker-CE for Ubuntu 18.04: 
- https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce-1

How to install Docker Compose for Ubuntu 18.04:
- https://docs.docker.com/compose/install/#install-compose

You may use the following scripts for bash to install docker-ce and docker-compose (as root).

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

# Initialization of Services

```
$ git clone https://github.com/royalcrab/accra_kobe/
$ cd accra_kobe
$ sudo ./services create
```

# Starting Servives

```
$ sudo ./services start
```

# Provisioning

```
$ bash prov
```

- HeartBeat sensor : /accra/beat001/attrs
- Temperature sensor: /accra/temp001/attrs
- Humidity sensor: /accra/hum001/attrs
- Smile sensor: /accra/smile001/attrs
- Flash device: /accra/bell001/cmd

# Stopping Servives

```
$ sudo ./services stop
```

# squid account/password

Username: accra
Password: test

You can change the username/password by editing squid/htpasswd file.

