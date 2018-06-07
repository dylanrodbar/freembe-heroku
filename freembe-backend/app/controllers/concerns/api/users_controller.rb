module Api
class UsersController < ApplicationController

  # get
  # obtiene los usuarios de la base de datos
  # /api/users
  def index
    @users = User.order('created_at DESC')
    render json:@users
  end

  # get
  # obtiene un usuario de la base de datos, dado su id
  # /api/users/id donde id es el identificador del usuario
  def show
    @user = User.find(params[:id])
    render json:@user
  end

  # post
  # crea un nuevo usuario en la base de datos
  # /api/users?name=&email=&password=&photo=&
  def create
    @user = User.new({name: params[:name], email: params[:email], password: params[:password], photo: params[:photo]})
    @user.save
    render json:@user
  end

  # delete
  # elimina un usuario de la base de datos, dado su id
  # /api/users/id donde id es el identificador del usuario
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json:@user
  end

  # put
  # edita un usuario de la base de datos, dado su id
  # /api/users/id?name=&email=&password=&photo=& donde id es el identificador del usuario
  def update
    @user = User.find(params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    @user.photo = params[:photo]
    @user.save
    render json:@user
  end
end
end