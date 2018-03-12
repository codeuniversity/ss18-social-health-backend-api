class MessageReactionReferencesController < ApplicationController
  before_action :set_message_reaction_reference, only: [:show, :update, :destroy]

  # GET /message_reaction_references
  def index
    @message_reaction_references = MessageReactionReference.all

    render json: @message_reaction_references
  end

  # GET /message_reaction_references/1
  def show
    render json: @message_reaction_reference
  end

  # POST /message_reaction_references
  def create
    @message_reaction_reference = MessageReactionReference.new(message_reaction_reference_params)

    if @message_reaction_reference.save
      render json: @message_reaction_reference, status: :created, location: @message_reaction_reference
    else
      render json: @message_reaction_reference.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /message_reaction_references/1
  def update
    if @message_reaction_reference.update(message_reaction_reference_params)
      render json: @message_reaction_reference
    else
      render json: @message_reaction_reference.errors, status: :unprocessable_entity
    end
  end

  # DELETE /message_reaction_references/1
  def destroy
    @message_reaction_reference.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message_reaction_reference
      @message_reaction_reference = MessageReactionReference.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def message_reaction_reference_params
      params.require(:message_reaction_reference).permit(:message_reaction_id, :message_id, :user_id)
    end
end
