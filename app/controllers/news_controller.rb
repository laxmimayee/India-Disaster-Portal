class NewsController < ApplicationController
  before_action :set_news, only: [:show, :edit, :update, :destroy]

  respond_to :html


def my
    @news = News.all
    #respond_with(@articles)
  end


def all
    @news = News.all
    #respond_with(@articles)
  end


   def preview
    @news = News.all
    #respond_with(@articles)
  end

  def index
    @news = News.all
    respond_with(@news)
  end

  def show
    respond_with(@news)
  end

  def new
    @news = News.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @news }
      format.js
    end
  end

  def edit
  end

  def create
    @news = News.new(news_params.merge(user_id: current_user.id))
    @news.save
    respond_with(@news)
  end

  def update
    @news.update(news_params)
    respond_with(@news)
  end

  def destroy
    @news.destroy
    respond_with(@news)
  end

  private
    def set_news
      @news = News.find(params[:id])
    end

    def news_params
      params.require(:news).permit(:heading, :news, :approve, :description, :avatar, :user_id)
    end
end
