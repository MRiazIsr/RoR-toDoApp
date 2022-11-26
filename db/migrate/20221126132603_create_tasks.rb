class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name, not_null: true
      t.text :description, not_null: false
      t.boolean :is_completed, default: false, not_null: true  
      t.timestamps
    end
  end
end
