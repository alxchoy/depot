class Product < ApplicationRecord
	validates :title, :description, :image_url, presence: true # sirve para validar cada campo de nuestro formulario, antes de ingresarlo a la DB
	validates :price, numericality: { greater_than_or_equal_to: 0.01 } # verifica un precio valido
	validates :title, uniqueness: true # validamos con el titulo del producto sea unico
	# validamos la url de la imagen, que pueda hacer gif, png o jpg (con format comparamos un campo con una expresion regular) y allow_blank permite dejarlo en blanco
	validates :image_url, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png)\Z}i,
		message: 'must be a URL for GIF, JPG or PNG image'
	}
end
