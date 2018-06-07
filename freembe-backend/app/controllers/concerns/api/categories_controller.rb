module Api
class CategoriesController < ApplicationController

  # get
  # obtiene todas las categorías en la base de datos
  # /api/categories/
  def index
    @categories = Category.order('created_at DESC')
    render json:@categories, include: '**'
  end

  # get
  # obtiene la categoría especificada por su id
  # /api/categories/id   donde id = un id de categoría existente en la base de datos
  def show
    @category = Category.find(params[:id])
    render json:@category, include: '**' #profundidad de json 2, es decir, se pueden hacer más referencias
  end

  # post
  # crea una nueva categoría, recibe como parámetro el nombre, una descripción y un enlace a una imagen
  # /api/categories?name=&description=&photo=
  def create
    @category = Category.new({name: params[:name], description: params[:description], photo:params[:photo]})
    @category.save
    render json:@category
  end

  # delete
  # borra una categoría, dado su id
  # /api/categories/id donde id = un id de categoría existente en la base de datos
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    render json:@category
  end

  # put
  # edita una categoría, recibe como parámetro el id de la categoría y los nuevos nombre, descripción y enlace a una imagen
  # /api/categories/id?name=&description=&photo=
  def update
    @category = Category.find(params[:id])
    @category.name = params[:name]
    @category.description = params[:description]
    @category.photo = params[:photo]
    @category.save
    render json:@category
  end






end
end
