class RecipesController < ApplicationController

  def new
    render('recipes/new.html.erb')
  end


  def create
    @recipe = Recipe.new({:name => params[:name], :stars => params[:stars]})
    if @recipe.save
      flash[:notice] = "Your Recipe has Been Saved!"
      redirect_to("/recipes")
    else
      render("recipes/new.html.erb")
    end
  end


  def index
    @recipes = Recipe.all_by_id
    render('recipes/index.html.erb')
  end

  # create another index that sorts by star rating?

  def show
    @recipe = Recipe.find(params[:id])
    render('recipes/show.html.erb')
  end


  def edit
    @recipe = Recipe.find(params[:id])
    render('recipes/edit.html.erb')
  end


  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(params[:recipe])
    @recipe.reload
    flash[:notice] = "Your Recipe has Been Updated."
    redirect_to("/recipes/#{@recipe.id}")
  end


  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    flash[:notice] = "Your Recipe has Been Deleted."
    redirect_to("/recipes")
  end




end
