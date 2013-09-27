class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    if @category.save
      flash[:notice] = "Category created!"
      redirect_to categories_url
    else
      render 'new'
    end
  end

  def category_params
    params.require(:category).permit(:name)
  end

  def index
    @categories = Category.all
  end

end
