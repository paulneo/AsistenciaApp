class EventSerializer < ActiveModel::Serializer

  attributes :id, :name,:place , :state, :created_at, :updated_at

  has_many :scheduled_event
end
