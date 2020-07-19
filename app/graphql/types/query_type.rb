module Types
  class QueryType < Types::BaseObject

     field :todos, [Types::TodoType], null: false do
       argument :isDeleted, Boolean, required: true
     end

     def todos(isDeleted: false)
       Todo.where(is_deleted: isDeleted);
     end

      field :todo, Types::TodoType, null: false do
         argument :id, ID, required: true
      end

      def todo(id:)
        Todo.find(id)
      end

  end
end
