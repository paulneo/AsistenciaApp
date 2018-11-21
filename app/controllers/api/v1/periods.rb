module API
  module V1
    class Periods < Grape::API
      include API::V1::Defaults

      resource :periods do
        desc "Return all periods"
        get "", root: :periods do
          Period.all
        end

        desc "Return a periods"
        params do
          requires :id, type: String, desc: "ID of the
            periods"
        end
        get ":id", root: "periods" do
          Period.find(permitted_params[:id])
        end
      end
    end
  end
end
