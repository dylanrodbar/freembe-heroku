class User < ApplicationRecord
  has_secure_password #método para validar que la contraseña que se brinde sea segura
  has_many :telephones
  has_many :emails
  has_many :announcements
  has_many :favorites
  has_many :comments


end
