# apollo
## usage
### apollo-admin
#### run
```bash
docker run -it ttbb/apollo:admin bash
```
### apollo-config
#### run
```bash
docker run -it ttbb/apollo:config bash
```
### apollo-portal
#### run
```bash
docker run -it ttbb/apollo:portal bash
```
### stand-alone
#### run with port expose
```bash
docker run -p 3306:3306 -p 8070:8070 -p 8080:8080 -p 8090:8090 -d ttbb/apollo:stand-alone
```

## 账号密码
- localhost:8070
- 账号：apollo
- 密码：admin
