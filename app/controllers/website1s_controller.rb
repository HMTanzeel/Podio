class Website1sController < ApplicationController
  before_action :find_note, only: [:show, :edit, :destroy, :update]

  def index
      @website1s = Website1.all
  end

  def new
      @website1 = Website1.new
  end

  def create
      @website1 = Website1.create(web1_params)
      if @note.save
        redirect_to @website1, notice: 'Note has successfully created.'
      else
        redirect_to new_website1_path, alert: @note.errors.full_messages
      end
  end

  def show; end

  def edit; end

  def update
    if @website1.update(web1_params)
      redirect_to @website1
    else
      redirect_to edit_website1_path(@website1), alert: @note.errors.full_messages
    end
  end

  private
    def web1_params
        params.require(:website1).permit(:web_name, :url, :created, :status, :email, :phone, :location, :domain, :hosting, :server)
    end

    def find_record
      @website1 = Website1.find(params[:id])
    end
end
