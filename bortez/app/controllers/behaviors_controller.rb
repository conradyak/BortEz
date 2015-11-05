class BehaviorsController < ApplicationController
  def index
    @behaviors = Behavior.all
  end

  def show
    @behavior = Behavior.find(params[:id])
  end

  def new
    @behavior = Behavior.new
  end

  def create
    @behavior = Behavior.create(behavior_params)
    redirect_to behavior_path(@behavior)
  end

  def edit
    @behavior = Behavior.find(params[:id])
  end

  def update
    @behavior = Behavior.find(params[:id])
    @behavior.update(behavior_params)
    redirect_to behavior_path(@behavior)
  end

  def destroy
    @behavior = Behavior.find(params[:id])
    @behavior.update(behavior_params)
    redirect_to behavior_path(@behavior)
  end

  private

  def behavior_params
  params.require(:behavior).permit(:name, :behavior_id)
end
end
