class ChatbotContentsController < ApplicationController
  before_action :set_chatbot_content, only: [:show, :update, :destroy]

  # GET /chatbot_contents
  def index
    @chatbot_contents = ChatbotContent.all

    render json: @chatbot_contents
  end

  # GET /chatbot_contents/1
  def show
    render json: @chatbot_content
  end

  # POST /chatbot_contents
  def create
    @chatbot_content = ChatbotContent.new(chatbot_content_params)

    if @chatbot_content.save
      render json: @chatbot_content, status: :created, location: @chatbot_content
    else
      render json: @chatbot_content.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /chatbot_contents/1
  def update
    if @chatbot_content.update(chatbot_content_params)
      render json: @chatbot_content
    else
      render json: @chatbot_content.errors, status: :unprocessable_entity
    end
  end

  # DELETE /chatbot_contents/1
  def destroy
    @chatbot_content.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chatbot_content
      @chatbot_content = ChatbotContent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def chatbot_content_params
      params.require(:chatbot_content).permit(:chatbot_content_primary, :chatbot_content_secondary, :chatbot_content_cemplexity)
    end
end
