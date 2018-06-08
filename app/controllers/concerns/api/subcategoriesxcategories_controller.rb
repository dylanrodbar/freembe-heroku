module Api
class SubcategoriesxcategoriesController < ApplicationController


  # get
  # obtiene todos los registros que guardan una subcategoria y categoria
  # /api/subcategoriesxcategories/
  def index
    @subcategoriesxcategories = SubcategoryXCategory.order('created_at DESC')
    render json: @subcategoriesxcategories
  end

  # get
  # obtiene el registro que tiene una subcategoria y categoria, especificado por su id
  # /api/subcategoriesxcategories/id   donde id = un id del registro existente en la base de datos
  def show
    @subcategoriesxcategories = SubcategoryXCategory.find(params[:id])
    render json: @subcategoriesxcategories

  end

  # post
  # crea un nuevo registro que contenga una subcategoria y una categoria, recibe como parámetro el id de la subcategoria y de la categoria
  # api/subcategoriesxcategories?category_id=&subcategory_id=
  def create

    @subcategoriesxcategories = SubcategoryXCategory.new({category_id: params[:category_id], subcategory_id: params[:subcategory_id]})
    @subcategoriesxcategories.save
    render json: @subcategoriesxcategories

  end

  # delete
  # borra un registro que posea una categoría y una subcategoría, dado su id
  # /api/subcategoriesxcategories/id donde id = un id del registro existente en la base de datos
  def destroy

    @subcategoriesxcategories = SubcategoryXCategory.find(params[:id])
    @subcategoriesxcategories.destroy
    render json: @subcategoriesxcategories

  end

  def update

  end

end
end
