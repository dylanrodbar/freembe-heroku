module Api
class EmailsController < ApplicationController

  # get
  # obtiene todos los emails
  # /api/emails/
  def index
    @emails = Email.order('created_at DESC')
    render json:@emails

  end

  # get
  # obtiene el email por su id
  # /api/emails/id donde id es el identificador del email
  def show
    @email = Email.find(params[:id])
    render json:@email

  end

  # post
  # crea un nuevo email para  un id de usuario dado
  # /api/emails?user_id=&email=
  def create
    @email = Email.new({user_id: params[:user_id], email: params[:email]})
    @email.save
    render json:@email

  end

  # delete
  # borra un email, dado su id
  # /api/emails/id donde id es el identificador del email
  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    render json:@email


  end

  # put
  # edita un email, dado su id
  # /api/emails/id?telephone= donde id es el identificador para el email
  def update
    @email = Email.find(params[:id])
    @email.email = params[:email]
    @email.save
    render json:@email

  end

end
end