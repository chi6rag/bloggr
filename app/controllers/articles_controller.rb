class ArticlesController < ApplicationController
  include ArticlesHelper
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params_article)
    if @article.save
      redirect_to articles_url
    else
      redirect_to new_article_path
    end
  end

  def show
    @article = Article.find(params[:id])
  end
end
