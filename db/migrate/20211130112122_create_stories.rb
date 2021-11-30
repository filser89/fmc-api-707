class CreateStories < ActiveRecord::Migration[6.1]
  def change
    create_table :stories do |t|
      t.string :name, null: false
      t.string :text, null: false

      t.timestamps
    end
  end
end
