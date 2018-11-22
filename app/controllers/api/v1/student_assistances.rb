module API
  module V1
    class StudentAssistances < Grape::API
      include API::V1::Defaults

      resource :student_assistances do
        desc "Return all student_assistances"
        get "", root: :student_assistances do
          StudentAssistance.all
        end

        desc "Return a student_assistances"
        params do
          requires :id, type: String, desc: "ID of the
            student_assistances"
        end
        get ":id", root: "student_assistances" do
          StudentAssistance.find(permitted_params[:id])
        end
      end
    end
  end
end
