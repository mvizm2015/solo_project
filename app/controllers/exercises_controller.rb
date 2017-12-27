class ExercisesController < ApplicationController

  def index

  end
  
  def create
    @workout = Workout.find(params[:workout_id])
    @exercise = @workout.exercises.create(params[:exercises].permit(:name, :set, :reps))

    redirect_to workout_path(@workout)
  end
end
