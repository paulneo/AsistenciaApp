class ScheduledEventSerializer < ActiveModel::Serializer

  attributes :id, :date, :hour_init, :event_id, :created_at, :updated_at

end
