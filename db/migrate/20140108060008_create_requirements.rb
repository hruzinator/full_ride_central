class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :text

      t.timestamps
    end
  end
end
