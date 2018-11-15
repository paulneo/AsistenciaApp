class ScheduledEventSerializer < ActiveModel::Serializer

  attributes :id, :name,:date, :hour_init, :event_id, :created_at, :updated_at

end
