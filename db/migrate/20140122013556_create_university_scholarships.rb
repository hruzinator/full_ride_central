class CreateUniversityScholarships < ActiveRecord::Migration
  def change
    create_table :university_scholarships do |t|
      t.string :school_name
      t.integer :school_unswr_rank
      t.string :home_page
      t.string :default_tuition
      t.string :shp_name
      t.string :shp_type
      t.integer :shp_amount
      t.string :shp_requirements

      t.timestamps
    end
  end
end
