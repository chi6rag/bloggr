module ArticlesHelper
  def params_article
    params.require(:article).permit(:title, :body, :tag_list, :image);
  end
end
