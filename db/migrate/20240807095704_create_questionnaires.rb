class CreateQuestionnaires < ActiveRecord::Migration[7.1]
  def change
    create_table :questionnaires do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :height
      t.string :favourite_color
      t.integer :sex

      t.timestamps
    end
  end
end
