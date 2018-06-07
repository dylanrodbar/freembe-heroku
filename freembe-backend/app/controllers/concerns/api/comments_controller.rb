module Api
class CommentsController < ApplicationController
  # get
  # obtiene todos los comentarios de la base de datos
  # api/comments
  def index
    @comments = Comment.order('created_at DESC')
    render json:@comments
  end

  # get
  # obtiene un comentario por medio de su identificador
  # api/comments/id donde id es el identificador del comentario
  def show
    @comment = Comment.find(params[:id])
    render json:@comment
  end

  # post
  # crea un nuevo comentario en la base de datos
  # /api/comments?user_id=&announcement_id=&description=
  def create
    @comment = Comment.new({user_id: params[:user_id], announcement_id: params[:announcement_id], description: params[:description]})
    @comment.save
    render json:@comment
  end

  # delete
  # borra un comentario de la base de datos
  # /api/comments/id donde id es el identificador del comentario
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    render json:@comment
  end

  # update
  # modifica un comentario de la base de datos, dado su id
  # /api/comments/id?user_id=&announcement_id=&description= donde id es el identificador del comentario
  def update
    @comment = Comment.find(params[:id])
    @comment.user_id = params[:user_id]
    @comment.announcement_id = params[:announcement_id]
    @comment.description = params[:description]
    @comment.save
    render json:@comment
  end
end
end