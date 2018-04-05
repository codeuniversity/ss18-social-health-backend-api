class ClustersController < ApplicationController
  after_action :collect_empty_clusters
  before_action :set_cluster, only: [:show, :update, :destroy]

  # GET /clusters
  def index
    @clusters = Cluster.all

    render json: @clusters
  end

  # GET /clusters/
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
        :time_between_member_left_cluster_created,:has_more_than_4_members,
        :is_cluster_full, user_left_cluster_timestamps:[])
    end


    def collect_empty_clusters

      @less_than_4_member_clusters = Cluster.where(is_cluster_full: false, has_more_than_4_members: false)

      if @less_than_4_member_clusters != nil
        # Do something
        puts "Test1"

        @less_than_4_member_clusters.each do |not_full_cluster|
          puts not_full_cluster.id
          puts not_full_cluster.checkForTimeDifference
          puts "q237ehs"
        end

      elsif @not_full_cluster != nil
        # Do something
        puts "Test2"
      end
    end

    def calculate_time_member_left_cluster_created
      # Do something
    end
end
