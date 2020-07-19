module Mutations
  class UpdateTodo < BaseMutation

    field :todo, Types::TodoType, null: false

    argument :id, ID, required: true
    argument :title, String, required: true
    argument :description, String, required: true

    def resolve(id: nil, title: nil, description: nil)
       todo =  Todo.find(id)
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
