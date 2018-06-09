module Api
class AnnouncementsController < ApplicationController

  # get
  # obtiene todos los anuncios de la base de datos
  # /api/announcements/
  def index
    @announcements = Announcement.order('COUNT(favorites) DESC')
    #@announcements = Announcement.order('created_at DESC')
    render json:@announcements
  end

  # get
  # obtiene un anuncio, dado su id
  # /api/announcements/id donde id es el identificador del anuncio
  def show
    @announcement = Announcement.find(params[:id])
    render json:@announcement
  end

  # post
  # crea un nuevo anuncio en la base de datos
  # /api/announcements?title=&description=&price=&photo=&user_id=&latitude=&longitude=&subcategory_id=&place= donde id es el identificador del anuncio
  def create
    @announcement = Announcement.new({title: params[:title], description: params[:description], price: params[:price], photo: params[:photo], user_id: params[:user_id], latitude: params[:latitude], longitude: params[:longitude], subcategory_id: params[:subcategory_id], place: params[:place]})
    @announcement.save
    render json:@announcement
  end

  # delete
  # elimina un anuncio de la base de datos, dado su id
  # /api/announcements/id donde id es el identificador del anuncio
  def destroy
    @announcement = Announcement.find(params[:id])
    @announcement.destroy
    render json:@announcement

  end

  # put
  # edita los datos de un anuncio en la base de datos, dado su id
  # /api/announcements/id?title=&description=&price=&photo=&latitude=&longitude=&subcategory_id=&place= donde id es el identificador del anuncio
  def update
    @announcement = Announcement.find(params[:id])
    @announcement.title = params[:title]
    @announcement.description = params[:description]
    @announcement.price = params[:price]
    @announcement.photo = params[:photo]
    @announcement.latitude = params[:latitude]
    @announcement.longitude = params[:longitude]
    @announcement.subcategory_id = params[:subcategory_id]
    @announcement.place = params[:place]
    @announcement.save
    render json:@announcement
  end
end
end