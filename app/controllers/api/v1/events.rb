module API
  module V1
    class Events < Grape::API
      include API::V1::Defaults

      resource :events do
        desc "Return all events"
        get "", root: :events do
          Event.all
        end

        desc "Return a events"
        params do
          requires :id, type: String, desc: "ID of the
            events"
        end
        get ":id", root: "events" do
          Event.find(permitted_params[:id])
        end
      end
    end
  end
end
