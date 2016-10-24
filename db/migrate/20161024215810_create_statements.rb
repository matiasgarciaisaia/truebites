class CreateStatements < ActiveRecord::Migration
  def change
    create_table :statements do |t|
      t.text :content, unique: true

      t.timestamps null: false
    end

    add_index :statements, :content, :unique => true
  end
end
