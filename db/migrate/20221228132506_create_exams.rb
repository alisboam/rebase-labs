class CreateExams < ActiveRecord::Migration[7.0]
   def change
    create_table :exams do |t|
      t.string :name, null: false
      t.string :cpf, :limit => 14, null: false
      t.string :email, :limit => 120, null: false
      t.date :birthdate, null: false
      t.string :address, :limit => 140, null: false
      t.string :city, :limit => 55, null: false
      t.string :state, :limit => 35, null: false
      t.string :doctor_crm, :limit => 11, null: false
      t.string :doctor_state, :limit => 2, null: false
      t.string :doctor_name, :limit => 140, null: false
      t.string :doctor_email, :limit => 120, null: false
      t.string :token, :limit => 10, null: false
      t.date :exam_date, null: false
      t.string :exam_name, :limit => 50, null: false
      t.string :exam_reference, :limit => 10, null: false
      t.integer :result, null: false
      t.timestamps default: Time.current
    end
  end
end
