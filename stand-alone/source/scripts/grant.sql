CREATE USER IF NOT EXISTS hzj identified by 'Mysql@123';
GRANT ALL ON ApolloConfigDB .* to hzj@'%';
GRANT ALL ON ApolloPortalDB .* to hzj@'%';
