class NewslettersController < ApplicationController
  def index
    @newsletters = Newsletter.all
  end

  def show
    @newsletter = Newsletter.find(params[:id])
  end

  private

  def newsletter_params
    params.require(:newsletter).permit(:title, :description, :image, :article)
  end

  def new
    newsletter = Newsletter.new(newsletter_params)
    newsletter.save
    redirect_to root_path
  end

  def edit
    @newsletter = Newsletter.find(params[:id])
  end

  def update
    newsletter = Newsletter.find(params[:id])
    newsletter.update(newsletter_params)
    redirect_to root_path
 end

 def destroy
  newsletter = Newsletter.find(params[:id])
  newsletter.destroy
  redirect_to root_path
end
end
