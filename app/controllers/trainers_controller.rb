class TrainersController < ApplicationController
  def index
    @trainers = Trainer.all
  end

  def new
    @trainer = Trainer.new
  end

  def create
    @trainer = Trainer.new(trainer_params)

    if @trainer.save
      redirect_to @trainer
    else
      render :new
    end
  end

  def show
    @trainer = Trainer.find(params[:id])
  end

  def edit
    @trainer = Trainer.find(params[:id])
  end

  def update
    @trainer = Trainer.find(params[:id])

    if @trainer.update(trainer_params)
      redirect_to @trainer
    else
      render :edit
    end
  end

  private

  def trainer_params
    params.require(:trainer).permit(:first_name, :last_name, :age, {location_ids: []})
  end
end
