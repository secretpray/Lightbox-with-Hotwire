class AttachmentsController < ApplicationController
  layout false
  before_action :set_article, only: :index

  def index; end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end
end
