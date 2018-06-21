class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :favoritable, polymorphic: true
      t.string :user
      t.string :references

      t.timestamps
    end
  end
end
