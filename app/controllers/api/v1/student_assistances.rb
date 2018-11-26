module API
  module V1
    class StudentAssistances < Grape::API

      include API::V1::Defaults

      resource :student_assistances do
        desc 'Return a list of student_assistances'
        get do
          student_assistances = StudentAssistance.all
          render student_assistances
        end

        desc 'Return a student_assistance'
        params do
          requires :id, type: Integer, desc: 'StudentAssistance ID'
        end
        route_param :id do
          get do
            student_assistance = StudentAssistance.with_pk!(params[:id])
            render student_assistance
          end
        end

        desc 'Create a student_assistance'
        params do
          
          # requires :registered_time, type: Date, desc: 'New student_assistance email'
          requires :student_enrollment_id, type: Integer, desc: 'New student_assistance first name'
          requires :scheduled_event_id, type: Integer, desc: 'New student_assistance last name'
          requires :assistance, type: String, desc: 'New student_assistance last name'

        end
        post do
          p params
          StudentAssistance.new({
               registered_time: DateTime.now,
               student_enrollment_id: params[:student_enrollment_id],
               scheduled_event_id: params[:scheduled_event_id],
               assistance: params[:assistance]
           }).save
        end
      end
    end
  end
end
