class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :student_id
      t.references :assignment, index: true, foreign_key: true
      t.datetime :date_submitted
      t.boolean :on_time
      t.boolean :paste_detected

      t.timestamps null: false
    end
  end
end
