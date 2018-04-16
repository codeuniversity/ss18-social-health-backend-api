class ClusterUserReferenceController < ApplicationController
  # before_action :set_cluster_user_reference, only: [:show, :update, :destroy]
  before_action :authenticate_user!

  # GET /cluster_user_references
  def index
    @cluster_user_references = ClusterUserReference.all

    render json: @cluster_user_references
  end

  # GET /cluster_user_references/1
  def show
    render json: @current_user.cluster_user_reference
  end

  # POST /cluster_user_references
  def create
    @cluster_user_reference = ClusterUserReference.new(cluster_user_reference_params)

    if @cluster_user_reference.save
      render json: @cluster_user_reference, status: :created, location: @cluster_user_reference
    else
      render json: @cluster_user_reference.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cluster_user_references/1
  def update
    if @cluster_user_reference.update(cluster_user_reference_params)
      render json: @cluster_user_reference
    else
      render json: @cluster_user_reference.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cluster_user_references/1
  def destroy
    @cluster_user_reference.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cluster_user_reference
      @cluster_user_reference = ClusterUserReference.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cluster_user_reference_params
      params.require(:cluster_user_reference).permit(:cluster_id, :user_id)
    end
end
