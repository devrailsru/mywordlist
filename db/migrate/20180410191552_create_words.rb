class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.string :title
      t.text :translation
      t.text :example

      t.timestamps
    end
  end
end
