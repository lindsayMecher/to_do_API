class AuthController < ApplicationController

    def show
        # parse the header for the token
        # decode the token
        # get the user object from the decoded token and verify
        # then render the user
        # user = User.find_by(id: params[:id])

        string = request.headers[:Authorization]
        array = string.split(' ')
        token = array[1]
        my_secret_key = '71e678b01cecbc0da63ffca70f4fced7f3c4a5e62d7ad86d52713ede9901c106d752b92650ec18d21b16722ef2f415ea77d7cd40ab5f8adb68377950380cd8a0'
        decoded_token = JWT.decode token, my_secret_key, true, { algorithm: 'HS256' }
        user_id = decoded_token[0]["user_id"]
        user = User.find(user_id)
        if user
            render json: user
        else
            render json: {error: "invalid token"}, status: 401
        end
    end

    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            my_secret_key = '71e678b01cecbc0da63ffca70f4fced7f3c4a5e62d7ad86d52713ede9901c106d752b92650ec18d21b16722ef2f415ea77d7cd40ab5f8adb68377950380cd8a0'
            payload = {user_id: user.id}
            token = JWT.encode(payload, my_secret_key, 'HS256')

            decoded_token = JWT.decode token, my_secret_key, true, { algorithm: 'HS256' }
            render json: { user_id: user.id, email: user.email, first_name: user.first_name, last_name: user.last_name, token: token}
        else 
            render json: {error: "invalid credentials"}, status: 401
        end
        
    end
end

