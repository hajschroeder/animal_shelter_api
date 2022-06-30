class CreateAnimal < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :species  
      t.string :name
      t.string :breed
      t.integer :age 

      t.timestamps
    end
  end
end
