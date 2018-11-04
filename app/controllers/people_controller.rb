class PeopleController < ApplicationController
  before_action :find_person, only: [:show,:edit,:update,:destroy]

    def index
      if params[:q]
        @people = Person.search(params[:q]).order("created_at DESC")

      else
        @people = Person.all
      end
    end

    def show
      @qr = RQRCode::QRCode.new("#{@person.dni}", size: 4, :level => :m, :mode => :number)
    end

    def new
      @person = Person.new

    end

    def create
      @person = Person.new(person_params)
      if @person.save
        redirect_to  @person
      else
        render :new
      end
    end

    def edit

    end

    def update
      if @person.update person_params
        redirect_to @person
      else
        render :edit
      end
    end

    def destroy
      @person.destroy
      redirect_to people_path
    end

    private

    def find_person
      @person = Person.find(params[:id])
    end

    def person_params
      params.require(:person).permit(:name,:lastName,:email, :dni,:cellphone)
    end

end
