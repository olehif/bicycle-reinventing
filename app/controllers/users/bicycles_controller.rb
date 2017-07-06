module Users
  class BicyclesController < UsersController
    def index
      @bicycles = current_user.bicycles
    end

    def new
      @bicycle = Bicycle.new
    end

    def create
      @bicycle = Bicycle.new(bicycle_params)
      if @bicycle.save
        redirect_to users_bicycles_path
      else
        render 'new'
      end
    end

    private

    def bicycle_params
      params.require(:bicycle).permit(:name, :description)
            .merge(user_id: current_user.id)
    end
  end
end
