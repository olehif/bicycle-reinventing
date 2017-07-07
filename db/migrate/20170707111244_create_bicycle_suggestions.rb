class CreateBicycleSuggestions < ActiveRecord::Migration[5.0]
  def change
    create_table :bicycle_suggestions do |t|
      t.string :name
      t.text :description
      t.string :bicycle_photo
      t.references :bicycle_category, foreign_key: true
      t.references :bicycle

      t.timestamps
    end
  end
end
