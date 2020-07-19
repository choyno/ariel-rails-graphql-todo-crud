class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|

      t.integer :user_id

      t.string :title
      t.text :description
      t.boolean :is_deleted

      t.timestamps
    end
  end
end
