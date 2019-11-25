class ArticlesController < ApplicationController

  # show list article page
  def index
    @articles = Article.all
  end

  # show new article form page
  def new
    @article = Article.new
  end

  # handle post article action
  def create
    article_params = permitted_params_article

    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  # show specified article page
  def show
    @article = Article.find(params[:id])
  end

  # show specified article form for update page
  def edit
    @article = Article.find(params[:id])
  end

  # handle put article action
  def update
    article_params = permitted_params_article

    @article = Article.find(params[:id])
    if @article.update(permitted_params_article)
      redirect_to @article
    else
      render 'edit'
    end
  end

  # handle delete article action
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private
  def permitted_params_article
    params.require(:article).permit(:title, :text)
  end
end
