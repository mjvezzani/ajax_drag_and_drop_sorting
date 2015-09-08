class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      flash[:success] = "Article created"
      redirect_to articles_path
    else
      flash[:error] = "Article error"
      render :new
    end
  end

  def edit
    @article = Article.find(parmas[:id])
  end

  def update
    @article = Article.find(params[:id])
    
    if @article.update(article_params)
      flash[:success] = "Article updated"
      redirect_to articles_path
    else
      flash[:error] = "Article error"
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
  end
end
