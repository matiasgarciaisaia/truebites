class CreateArgumentViewVersions < ActiveRecord::Migration
  def change
    create_table :argument_view_versions do |t|
      t.references :argument_view, index: true, foreign_key: true
      t.references :previous, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
