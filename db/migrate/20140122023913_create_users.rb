class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email
      t.integer :act_score
      t.integer :sat_score
      t.float :hs_gpa
      t.integer :min_tuition_considering

      t.timestamps
    end
  end
end
