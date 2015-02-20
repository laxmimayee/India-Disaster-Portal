class AdvertisementsController < ApplicationController
  before_action :set_advertisement, only: [:show, :edit, :update, :destroy]

  respond_to :html



def my
    @advertisements = Advertisement.all
    #respond_with(@articles)
  end

   def all
    @advertisements = Advertisement.all
    #respond_with(@articles)
  end


   def preview
    @advertisements = Advertisement.all
    #respond_with(@articles)
  end

  def index
    @advertisements = Advertisement.all
    respond_with(@advertisements)
  end

  def show
    respond_with(@advertisement)
  end

  def new
    @advertisement = Advertisement.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @article }
      format.js
    end
  end

  def edit
  end

  def create
    @advertisement = Advertisement.new(advertisement_params.merge(user_id: current_user.id))
    @advertisement.save
    respond_with(@advertisement)
  end

  def update
    @advertisement.update(advertisement_params)
    respond_with(@advertisement)
  end

  def destroy
    @advertisement.destroy
    respond_with(@advertisement)
  end

  private
    def set_advertisement
      @advertisement = Advertisement.find(params[:id])
    end

    def advertisement_params
      params.require(:advertisement).permit(:add_heading, :add_description, :display_at, :approve, :avatar, :user_id)
    end
end
