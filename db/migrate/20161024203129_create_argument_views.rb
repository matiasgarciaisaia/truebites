class CreateArgumentViews < ActiveRecord::Migration
  def change
    create_table :argument_views do |t|
      t.references :argument, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end

    add_index :argument_views, [:argument_id, :user_id], :unique => true
  end
end
