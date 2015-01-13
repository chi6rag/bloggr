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
    @article.save
    flash.notice = "#{@article.title} was created successfully"
    redirect_to article_path(@article)
  end

  def show
    @article = Article.find(params[:id])
  end

  def destroy
    article = Article.find(params[:id])
    article.delete
    flash.notice = "#{article.title} was deleted successfully"
    redirect_to articles_path
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(params_article)
    flash.notice = "Success! #{@article.title} was updated successfully"
    redirect_to articles_path
  end
end
