class PersonSerializer < ActiveModel::Serializer

  attributes :id, :name, :lastName , :dni, :created_at, :updated_at

end
