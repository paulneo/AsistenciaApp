module API
  module V1
    class Base < Grape::API
      mount API::V1::ScheduledEvents
      mount API::V1::Events
      mount API::V1::People

    end
  end
end
