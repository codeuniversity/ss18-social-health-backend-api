class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :update, :destroy]
  before_action :authenticate_user!

  # GET /messages
  def index
    @messages = Message.all

    render json: @messages
  end

  # GET /messages/1
  def show
    render json: @message
  end

  # POST /messages
  def create
    @message = Message.new(message_params)
    @reference = MessageReference.create(user: @current_user, cluster: @current_user.cluster,
    message: @message)

    @message.message_reference = @reference

    # @message.message_reference.cluster = @current_user.cluster
    # @message.message_reference.user = @current_user

    puts "here is the messages message reference"
    puts @message.cluster
    puts @message.user
    puts "Here it ends"

    # puts request.headers["UID"]

    if @message.save
      render json: @message, status: :created, location: @message
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /messages/1
  def update
    if @message.update(message_params)
      render json: @message
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  # DELETE /messages/1
  def destroy
    @message.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def message_params
      params.require(:message).permit(:message_sent, :message_content)
    end
end
