module Api
class AdminsController < ApplicationController
  # get
  # obtiene los administradores de la base de datos
  # /api/admins
  def index
    @admins = Admin.order('created_at DESC')
    render json:@admins
  end

  # get
  # obtiene un administrador de la base de datos, dado su id
  # /api/admins/id donde id es el identificador del administrador
  def show
    @admin = Admin.find(params[:id])
    render json:@admin
  end

  # post
  # crea un nuevo administrador en la base de datos
  # /api/admins?email=&password=&
  def create
    @admin = Admin.new({email: params[:email], password: params[:password]})
    @admin.save
    render json:@admin
  end

  # delete
  # elimina un administrador de la base de datos, dado su id
  # /api/admins/id donde id es el identificador del administrador
  def destroy
    @admin = Admin.find(params[:id])
    @admin.destroy
    render json:@admin
  end

  # put
  # edita un administrador de la base de datos, dado su id
  # /api/admins/id?email=&password= donde id es el identificador del administrador
  def update
    @admin = Admin.find(params[:id])
    @admin.email = params[:email]
    @admin.password = params[:password]
    @admin.save
    render json:@admin
  end
end
end