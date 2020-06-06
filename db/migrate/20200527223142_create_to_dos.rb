class CreateToDos < ActiveRecord::Migration[6.0]
  def change
    create_table :to_dos do |t|
      t.string :title
      t.text :body
      t.string :importance

      t.timestamps
    end
  end
end
