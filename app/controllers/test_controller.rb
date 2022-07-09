class TestController < ApplicationController
    before_action :authenticate_user!

    def testing
        render json: {
            data: {
              user: current_user
            }
          }, status: 200
    end
end
