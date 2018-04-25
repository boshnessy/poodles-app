class CreatePoodles < ActiveRecord::Migration[5.1]
  def change
    create_table :poodles do |t|
      t.string :name
      t.integer :age
      t.string :breed
      t.string :color

      t.timestamps
    end
  end
end
