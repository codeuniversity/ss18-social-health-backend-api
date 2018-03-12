class MessageReferencesController < ApplicationController
  before_action :set_message_reference, only: [:show, :update, :destroy]

  # GET /message_references
  def index
    @message_references = MessageReference.all

    render json: @message_references
  end

  # GET /message_references/1
  def show
    render json: @message_reference
  end

  # POST /message_references
  def create
    @message_reference = MessageReference.new(message_reference_params)

    if @message_reference.save
      render json: @message_reference, status: :created, location: @message_reference
    else
      render json: @message_reference.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /message_references/1
  def update
    if @message_reference.update(message_reference_params)
      render json: @message_reference
    else
      render json: @message_reference.errors, status: :unprocessable_entity
    end
  end

  # DELETE /message_references/1
  def destroy
    @message_reference.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message_reference
      @message_reference = MessageReference.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def message_reference_params
      params.require(:message_reference).permit(:user_id, :cluster_id, :message_id)
    end
end
