class UserController < ApplicationController
  before_action :authenticate_user!

  # GET /user
  def show
    render json: @current_user
  end

  # POST /user
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user
  def destroy
    @current_user.destroy
  end

  # PATCH/PUT /user - When this request gets triggered, the user leaves his cluster
  def leave
    @current_user.cluster = nil
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:nickname, :credits, :last_time_credit_added)
    end
end
