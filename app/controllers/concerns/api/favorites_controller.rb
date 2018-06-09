module Api
class FavoritesController < ApplicationController

  # get
  # obtiene todos los favoritos de la base de datos
  # api/favorites
  def index
    @favorites = Favorite.order('created_at DESC')
    render json:@favorites
  end

  # get
  # obtiene un favorito por medio de su identificador
  # api/favorites/id donde id es el identificador del favorito
  def show
    @favorite = Favorite.find(params[:id])
    render json:@favorite
  end

  # post
  # crea un nuevo favorito en la base de datos
  # /api/favorites?user_id=&announcement_id=
  def create
    @favorite = Favorite.where(user_id: params[:user_id]).and(Favorite.where(announcement_id: params[:announcement_id]))
    if @favorite.present?
      @favorite.destroy
      render json:@favorite
    end
    else
      @favorite = Favorite.new({user_id: params[:user_id], announcement_id: params[:announcement_id]})
      @favorite.save
      render json:@favorite
    end
  end

  # delete
  # borra un favorito de la base de datos
  # /api/favorites/id donde id es el identificador del favorito
  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    render json:@favorite
  end

  # update
  # modifica un favorito de la base de datos, dado su id
  # /api/favorites/id?user_id=&announcement_id= donde id es el identificador del favorito
  def update
    @favorite = Favorite.find(params[:id])
    @favorite.user_id = params[:user_id]
    @favorite.announcement_id = params[:announcement_id]
    @favorite.save
    render json:@favorite
  end


end
end