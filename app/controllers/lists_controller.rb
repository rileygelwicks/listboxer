class ListsController < ApplicationController
  def index
    @lists = List.find()
  end
end
