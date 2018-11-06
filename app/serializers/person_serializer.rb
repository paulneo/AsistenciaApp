class PersonSerializer < ActiveModel::Serializer

  attributes :name, :lastName, :email, :dni, :cellphone ,:created_at, :updated_at
end
