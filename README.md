### Ruby Version
```
rvm use 2.6.3
```


###Create Database
```
connect = psql postgres
quit =\q
create usre = CREATE USER graphqlTodo;
create databse CREATE DATABASE logistic_dev;
CREATE DATABASE graphql_todo_development OWNER graphqlTodo;

GRANT ALL PRIVILEGES ON DATABASE graphql_todo_development to graphqlTodo; 

permission  
alter role graphqlTodo with superuser;  
ALTER DATABASE graphql_todo_development OWNER TO graphqlTodo;  
```


### Start Server
```
rails s
```
