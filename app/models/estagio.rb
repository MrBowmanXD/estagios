class Estagio < ApplicationRecord
  validates :titulo, :descricao, :localidade, presence: true
  validates :titulo, uniqueness: true
end
