class ListsController < ApplicationController
  def index
    @lists = List.where(spam: false).paginate(page: params[:page])
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to @list
    else
      render 'new'
    end
  end

  def update
    @list = List.find(params[:id])

    if @list.update(list_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end


  private
  def list_params
    params.require(:list).permit(:spam, :name, :description, :website, :fromAddress, :category)
  end
end
