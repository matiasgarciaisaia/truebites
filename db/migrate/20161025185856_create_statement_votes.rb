class CreateStatementVotes < ActiveRecord::Migration
  def change
    create_table :statement_votes do |t|
      t.references :statement, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.boolean :agree

      t.timestamps null: false
    end

    add_index :statement_votes, [:statement_id, :user_id], :unique => true
  end
end
