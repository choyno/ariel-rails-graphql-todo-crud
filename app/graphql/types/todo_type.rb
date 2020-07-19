module Types
   class TodoType < Types::BaseObject
     field :id, ID, null: false
     field :title, String, null: true
     field :description, String, null: true
     field :is_deleted, Boolean, null: true
   end
end
