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


### Graphql Sample Query and Mutation

```
  #list all todos
  query todos {
     todos: todos(
       isDeleted: true
     ){
       id
       title
       description
     }
   }

 #get 1 todo
 query todo {
    todo: todo(id: 1){
      id
      title
      description
    }
  }

  #create todo
  mutation createTodo {
 		createTodo(	input: {
      title: "hello"
      description: "description sample"
    }){
      todo {
        id
        title
        description
      }
    }
  }

  #update todo
  mutation updateTodo {
      updateTodo(input:{
        id: 2
        title: "new title yes its working"
        description: "new description"
      }){
        todo {
          id
          title
          description
        }
      }
    }

   #soft delete
   mutation deleteTodo {
      deleteTodo(input:{
        id: 4
      }){
        todo {
          id
          title
          description
          isDeleted
        }
      }
    }
```

