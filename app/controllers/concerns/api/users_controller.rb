module Api
class UsersController < ApplicationController

  skip_before_action :authenticate_request, :except => [:index, :show, :destroy, :update]

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
  # /api/users?name=&email=&password=&photo=&type=
  def create
    @user = User.new({name: params[:name], email: params[:email], password: params[:password], photo: params[:photo], role: params[:type]})
    @user.save
    @auth = JsonWebToken.encode(user_id: @user.id)
    render json:  {user: @user, auth_token: @auth}
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
  # /api/users/id?name=&email=&password=&photo=&type= donde id es el identificador del usuario
  def update
    @user = User.find(params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    @user.photo = params[:photo]
    @user.role = params[:type]
    @user.save
    render json:@user
  end


  #añadir consulta para editar solo nombre y foto


end
end