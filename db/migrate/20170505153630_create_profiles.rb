class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :title
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end