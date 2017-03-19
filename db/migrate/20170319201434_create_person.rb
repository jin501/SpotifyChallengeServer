class CreatePerson < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :favoriteCity
    end
  end
end
