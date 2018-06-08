module Api
class SubcategoriesController < ApplicationController

  # get
  # obtiene todas las subcategorías en la base de datos
  # /api/subcategories/
  def index
    @subcategories = Subcategory.order('created_at DESC')
    render json:@subcategories

  end

  # get
  # obtiene la subcategoría especificada por su id
  # /api/subcategories/id   donde id = un id de subcategoría existente en la base de datos
  def show
    @subcategory = Subcategory.find(params[:id])
    render json:@subcategory

  end

  # post
  # crea una nueva subcategoría, recibe como parámetro el nombre, una descripción y un enlace a una imagen
  # /api/subcategories?name=&description=&photo=
  def create
    @subcategory = Subcategory.new({name: params[:name], description: params[:description], photo: params[:photo]})
    @subcategory.save
    render json:@subcategory

  end

  # delete
  # borra una subcategoría, dado su id
  # /api/subcategories/id donde id = un id de subcategoría existente en la base de datos
  def destroy
    @subcategory = Subcategory.find(params[:id])
    @subcategory.destroy
    render json:@subcategory

  end

  # put
  # edita una subcategoría, recibe como parámetro el id de la subcategoría y los nuevos nombre, descripción y enlace a una imagen
  # /api/subcategories/id?name=&description=&photo=
  def update
    @subcategory = Subcategory.find(params[:id])
    @subcategory.name = params[:name]
    @subcategory.description = params[:description]
    @subcategory.photo = params[:photo]
    @subcategory.save
    render json:@subcategory

  end

end
end
