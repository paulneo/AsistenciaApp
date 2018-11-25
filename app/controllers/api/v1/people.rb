module API
  module V1
    class People < Grape::API
      include API::V1::Defaults

      resource :people do
        desc "Return all people"
        get "", root: :people do
          Person.all
        end

        desc "Return a people"
        params do
          requires :id, type: String, desc: "ID of the
            people"
        end
        get ":id", root: "people" do
          Person.find(permitted_params[:id])
        end
      end


      include API::V1::Defaults

      resource :people do
        desc 'Return a list of people'
        get do
          people = Person.all
          render people
        end

        desc 'Return a person'
        params do
          requires :id, type: Integer, desc: 'Person ID'
        end
        route_param :id do
          get do
            person = Person.with_pk!(params[:id])
            render person
          end
        end

        desc 'Create a person'
        params do
          requires :name, type: String, desc: 'New person email'
          requires :lastName, type: String, desc: 'New person first name'
          requires :dni, type: String, desc: 'New person last name'

        end
        post do
          Person.new({
               name: params[:name],
               lastName: params[:lastName],
               dni: params[:dni]

           }).save
        end
      end
    end
  end
end
