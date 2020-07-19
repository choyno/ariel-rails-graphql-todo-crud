module Mutations
  class CreateTodo < BaseMutation

    field :todo, Types::TodoType, null: false

    argument :title, String, required: true
    argument :description, String, required: true


    def resolve(title: nil, description: nil)
       todo =  Todo.new
       todo.title = title
       todo.description = description

       if todo.save
         {
           todo:  todo,
           errors: []
         }
       else
         {
           todo:  nil,
           errors: "failed"
         }
       end
    end

  end
end
