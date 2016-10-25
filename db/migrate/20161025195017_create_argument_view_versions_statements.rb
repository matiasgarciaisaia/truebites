class CreateArgumentViewVersionsStatements < ActiveRecord::Migration
  def change
    create_table :argument_view_versions_statements do |t|
      t.references :argument_view_version, index: true, foreign_key: true, index: { name: 'index_version_statements_version' }
      t.references :statement, index: true, foreign_key: true
    end

    add_index :argument_view_versions_statements, [:argument_view_version_id, :statement_id], :unique => true, name: 'index_version_statements_unique_version_statement'
  end
end
