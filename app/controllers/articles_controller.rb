class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  respond_to :html


   def all
     @articles = Article.all
    #respond_with(@articles)
  end

 def my
     @articles = Article.all
    #respond_with(@articles)
  end

   def preview
    @articles = Article.all
    #respond_with(@articles)
  end

  def index
    @articles = Article.all
    respond_with(@articles)
  end

  def show
    respond_with(@article)
  end

  def new
    @article = Article.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @article }
      format.js
    end
  end

  def edit
  end

  def create
    @article = Article.new(article_params.merge(user_id: current_user.id))
    @article.save
    respond_with(@article)
  end

  def update
    @article.update(article_params)
    respond_with(@article)
  end

  def destroy
    @article.destroy
    respond_with(@article)
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:heading, :article, :approve, :avatar, :user_id)
    end
end
