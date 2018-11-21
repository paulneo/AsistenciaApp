module API
  module V1
    class StudentEnrollments < Grape::API
      include API::V1::Defaults

      resource :student_enrollments do
        desc "Return all student_enrollments"
        get "", root: :student_enrollments do
          StudentEnrollment.all
        end

        desc "Return a student_enrollments"
        params do
          requires :id, type: String, desc: "ID of the
            student_enrollments"
        end
        get ":id", root: "student_enrollments" do
          StudentEnrollment.find(permitted_params[:id])
        end
      end
    end
  end
end
