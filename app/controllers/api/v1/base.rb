module API
  module V1
    class Base < Grape::API
      mount API::V1::ScheduledEvents
      mount API::V1::Events
      mount API::V1::People
      mount API::V1::StudentEnrollments
      mount API::V1::Periods
      mount API::V1::StudentAssistances
      mount API::V1::Users

    end
  end
end
