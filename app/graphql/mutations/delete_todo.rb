module Mutations
  class DeleteTodo < BaseMutation
    field :todo, Types::TodoType, null: false

    argument :id, ID, required: true

    def resolve(id: nil)
       todo =  Todo.find(id)
       todo.is_deleted = true

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
