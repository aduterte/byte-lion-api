class CreateScratchers < ActiveRecord::Migration[6.0]
  def change
    create_table :scratchers do |t|
      t.string :name
      t.string :description
      t.string :size, array: true
      t.float :price

      t.timestamps
    end
  end
end
