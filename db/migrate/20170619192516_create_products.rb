class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price, precision: 8, scale: 2 # añadimos mas detalles a la propiedad (longitud y numero de decimales)

      t.timestamps
    end
  end
end
