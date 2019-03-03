class IngestionsController < ApplicationController
  def show
  end

  def new
    @ingestion = Ingestion.new
  end

  def edit
  end

  def create
    @ingestion = current_user.ingestions.new

    ingestion_params['dish_ids'].reject(&:empty?).each do |dish_id| 
      binding.pry
      dish = Dish.find(dish_id)
      @ingestion.dishes << dish
    end

    @ingestion.save
  end

  def update
  end

  def destroy
  end

  private

  def ingestion_params
    params.require(:ingestion).permit(dish_ids:[])
  end
end
