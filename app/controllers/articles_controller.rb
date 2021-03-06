class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
  
 
    if params[:search]
    @articles = Article.search(params[:search]).order("created_at DESC")
  else
    @articles =Article.order("title").page(params[:page]).per(3)
    #this is where we pagnate. so aech page has up to six articles
    respond_with(@articles)
  end
  
  end

  def show
    respond_with(@article)
  end

  def new
    @article = Article.new
    respond_with(@article)

  end

  def edit
  end

  def create
    @article = Article.new(article_params)
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
      params.require(:article).permit(:title, :description,:category,:avator, :code_snippet_text)

    end
end
