module API
  module V1
    class Users < Grape::API
      include API::V1::Defaults
  

      resource :users do
        desc "Return all users"
        get "", root: :users do
          User.all
        end

        desc "Return a users"
        params do
          requires :id, type: String, desc: "ID of the
            users"
        end
        get ":id", root: "users" do
          User.find(permitted_params[:id])
        end

        desc 'Create a users'
        params do

          # requires :registered_time, type: Date, desc: 'New student_assistance email'
          requires :email, type: String, desc: 'New users email'
          requires :password, type: String, desc: 'New users password'


        end
        post do

          p params
          StudentAssistance.new({
               email: params[:email],
               password: params[:password],
           }).save
        end
      end
    end
  end
end
