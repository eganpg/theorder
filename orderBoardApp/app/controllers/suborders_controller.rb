class SubordersController < ApplicationController
  def new
    @suborder = Suborder.new
  end

  def index
    @suborder = Suborder.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
