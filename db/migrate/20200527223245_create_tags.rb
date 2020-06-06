class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.string :name
      t.integer :user_id
      t.integer :to_do_id

      t.timestamps
    end
  end
end
