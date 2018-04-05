class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @cluster = Cluster.create(user_left_cluster_timestamps: [2323, 2323], is_cluster_full: false,
      has_more_than_4_members: false, time_between_member_left_cluster_created: 2)

    @cluster.save

    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Check for existing clusters and if they are full or not


    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:nickname, :creduts, :rank_id,
        :last_time_credit_added, :cluster_id)
        # Here comes the cluster_id
    end

    def cluster_params
      params.require(:cluster).permit(:cluster_id)
    end

    def create_cluster

    end
end
