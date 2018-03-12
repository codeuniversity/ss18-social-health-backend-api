class MessageReactionsController < ApplicationController
  before_action :set_message_reaction, only: [:show, :update, :destroy]

  # GET /message_reactions
  def index
    @message_reactions = MessageReaction.all

    render json: @message_reactions
  end

  # GET /message_reactions/1
  def show
    render json: @message_reaction
  end

  # POST /message_reactions
  def create
    @message_reaction = MessageReaction.new(message_reaction_params)

    if @message_reaction.save
      render json: @message_reaction, status: :created, location: @message_reaction
    else
      render json: @message_reaction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /message_reactions/1
  def update
    if @message_reaction.update(message_reaction_params)
      render json: @message_reaction
    else
      render json: @message_reaction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /message_reactions/1
  def destroy
    @message_reaction.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message_reaction
      @message_reaction = MessageReaction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def message_reaction_params
      params.require(:message_reaction).permit(:reaction_content)
    end
end
