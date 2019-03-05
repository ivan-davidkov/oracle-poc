# oracle-poc
Oracle products PoC repo

# pre requirements
- hub.docker.com account
- docker installed
- docker-compose installed
- login to hub.docker.com
```sh
docker login -u <YOUR HUB LOGIN> -p <YOUR HUB PASSWORD>
```
- accept all oracle licenses and pull images
 - Oracle Database Enterprise Edition (12c)
 ```sh
 docker pull store/oracle/database-enterprise:12.2.0.1
 ```
 - Oracle Instant Client (12c)
 ```sh
 docker pull store/oracle/database-instantclient:12.2.0.1
 ```
 - Oracle Fusion Middleware Infrastructure
  ```sh
  docker pull store/oracle/fmw-infrastructure:12.2.1.2
  ```

# persistent storage?
when using docker-compose your containers will persist until you `down` them `stop` will not destroy them! Thus you may want to keep the data even after you `docker-compose down` your containers so persistent storage will come handy there. You need 4 volumes:
 - /u01 – OraInventory and Oracle 12c product directories
 - /u02 – Oracle Datafile
 - /u03 – Fast Recovery Area
 - /u04 – RedoLog files

just un-comment database service __volumes:__ in the `docker-compose.yml` file

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
