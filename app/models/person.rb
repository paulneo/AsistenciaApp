class Person < ApplicationRecord
  validates_presence_of :name, :lastName, :email, :dni, :cellphone
end
