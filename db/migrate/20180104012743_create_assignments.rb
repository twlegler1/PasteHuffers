class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.datetime :date_due
      t.datetime :date_assigned
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
