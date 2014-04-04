class TagsController < ApplicationController

  def new
    render("/tags/new.html.erb")
  end

  def create
    @tag = Tag.new({:name => params[:name]})
    if @tag.save
      flash[:notice] = "Your Tag Has Been Saved!"
      redirect_to("/tags")
    else
      render("/tags/new.html.erb")
    end
  end

  def index
    @tag = Tag.all_by_id
    render('/tags/index.html.erb')
  end

  def show
    @tag = Tag.find(params[:id])
    render('/tags/show.html.erb')
  end

  def edit
    @tag = Tag.find(params[:id])
    render("/tags/edit.html.erb")
  end

  def destroy
    @tag = Tag.find(params[:id])
    unless params[:id].blank?
    @tag.destroy
    else
    #@tag.participations.find( params[:id] ).destroy
  end
    flash[:notice] = "Your Tag Has Been Deleted."
    redirect_to("/tags")
  end

  def update
    @tag = Tag.find(params[:id])
    @tag.update(params[:tag])
    @tag.reload
    flash[:notice] = "Your Recipe Has Been Updated."
    redirect_to("/tags/#{@tag.id}")
  end

end



