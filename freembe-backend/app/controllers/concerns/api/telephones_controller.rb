module Api
class TelephonesController < ApplicationController

  # get
  # obtiene todos los números de teléfono
  # /api/telephones/
  def index
    @telephones = Telephone.order('created_at DESC')
    render json:@telephones

  end

  # get
  # obtiene el número de teléfono por su id
  # /api/telephones/id donde id es el identificador del teléfono
  def show
    @telephone = Telephone.find(params[:id])
    render json:@telephone

  end

  # post
  # crea un nuevo número de teléfono para  un id de usuario dado
  # /api/telephones?user_id=&telephone=
  def create
    @telephone = Telephone.new({user_id: params[:user_id], telephone: params[:telephone]})
    @telephone.save
    render json:@telephone

  end

  # delete
  # borra un número de teléfono, dado su id
  # /api/telephones/id donde id es el identificador del teléfono
  def destroy
    @telephone = Telephone.find(params[:id])
    @telephone.destroy
    render json:@telephone


  end

  # put
  # edita un número telefónico, dado su id
  # /api/telephones/id?telephone= donde id es el identificador para el teléfono
  def update
    @telephone = Telephone.find(params[:id])
    @telephone.telephone = params[:telephone]
    @telephone.save
    render json:@telephone

  end
end
end