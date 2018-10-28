class Person < ApplicationRecord
  validates_presence_of :name, :lastName, :dni, :cellphone
end
