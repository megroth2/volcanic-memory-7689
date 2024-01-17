class ScientistExperimentsController < ApplicationController

  def update
    @scientist_experiment = ScientistExperiment.find(params[:id])
    @scientist = @scientist_experiment.scientist
    # @experiment = @scientist_experiment.experiment

    @scientist_experiment.update(scientist_experiment_params)

    redirect_to scientist_path(@scientist)
  end

  def destroy
    scientist_experiment = ScientistExperiment.find_by(scientist_id: params[:scientist_id], experiment_id: params[:id])
    scientist_experiment.destroy
    redirect_to "/scientists/#{params[:scientist_id]}"
  end

  private

  def scientist_experiment_params
    params.permit(:id, :active, :scientist_id, :experiment_id, :created_at, :updated_at)
  end

end