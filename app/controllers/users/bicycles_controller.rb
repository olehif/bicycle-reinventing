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
    end

    private

    def bicycle_param
      params.require(:bicycle).permit(:name, :description)
    end
  end
end
