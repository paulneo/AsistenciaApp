module API
  module V1
    class ScheduledEvents < Grape::API
      include API::V1::Defaults

      resource :scheduled_events do
        desc "Return all scheduled_events"
        get "", root: :scheduled_events do
          ScheduledEvent.all
        end

        desc "Return a scheduled_events"
        params do
          requires :id, type: String, desc: "ID of the
            scheduled_events"
        end
        get ":id", root: "scheduled_events" do
          ScheduledEvent.find(permitted_params[:id])
        end
      end
    end
  end
end
