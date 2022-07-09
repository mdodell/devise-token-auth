class ApplicationController < ActionController::API
        include ActionController::Cookies
        include DeviseTokenAuth::Concerns::SetUserByToken

        
        def authenticate_user!
                unless current_user
                  return render json: {
                    errors: ["You shall not pass!"]
                  }, status: 401
                end
        end
end
