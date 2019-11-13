# mysql_utilities
Dockerfile to spin docker image with MySQL Utilities.

## Usage

### Build your docker image
```bash
git clone git@github.com:avoyer-fuze/mysql_utilities.git
cd mysql_utilities
docker build mysql_utilities:1.0 .
```

## Example

Compare schemas using mysqldbcompare.

```bash
docker run -it --network host --rm mysql_utilities:1.0 mysqldbcompare \
--server1=user:password@server1.com \
--server2=user:password@server2.com \
schema_name:schema_name \
--run-all-tests --changes-for=server2 --difftype=sql
```
