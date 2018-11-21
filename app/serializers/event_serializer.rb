class EventSerializer < ActiveModel::Serializer

  attributes :id, :name,:place , :state

  has_many :scheduled_event
end
