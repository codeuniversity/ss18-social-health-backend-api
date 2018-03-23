class ClustersController < ApplicationController
  before_action :set_cluster, only: [:show, :update, :destroy]

  # GET /clusters
  def index
    @clusters = Cluster.all

    render json: @clusters
  end

  # GET /clusters/1
  def show
    render json: @cluster
  end

  # POST /clusters
  def create
    @cluster = Cluster.new(cluster_params)

    if @cluster.save
      render json: @cluster, status: :created, location: @cluster
    else
      render json: @cluster.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clusters/1
  def update
    if @cluster.update(cluster_params)
      render json: @cluster
    else
      render json: @cluster.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clusters/1
  def destroy
    @cluster.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cluster
      @cluster = Cluster.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cluster_params
      params.require(:cluster).permit(:rank_id, :last_time_cbc_posted,
        :user_left_cluster_timestamps, :time_between_member_left_cluster_created,
        :has_more_than_4_members, :is_cluster_full)
    end
end
