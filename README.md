# oracle-poc
Oracle products PoC repo

# pre requirements
- hub.docker.com account
- docker installed
- docker-compose installed
- accept all docker licenses (docker hub oracle etc.)

# usage
- clone this repo
```sh
git clone https://github.com/ivan-davidkov/oracle-poc.git
```
- boot your containers
```sh
docker-compose -f docker-compose.yml up
```
- connect to weblogic admin server
```sh
firefox http://localhost:7001
```
