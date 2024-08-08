class QuestionnairesController < ApplicationController
  before_action :set_questionnaire, only: %i[show edit update destroy]

  def index
    @questionnaires = Questionnaire.all
  end

  def show; end

  def new
    @questionnaire = Questionnaire.new
  end

  def edit; end

  def create
    @questionnaire = Questionnaire.new(questionnaire_params)

    if @questionnaire.save
      respond_to do |format|
        format.html { redirect_to questionnaires_path, notice: 'Questionnaire was successfully created.' }
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @questionnaire.update(questionnaire_params)
      respond_to do |format|
        format.html { redirect_to questionnaires_path, notice: 'Questionnaire was successfully updated.' }
        format.turbo_stream
      end
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @questionnaire.destroy!

    respond_to do |format|
      format.html { redirect_to questionnaire_path, method: :get, notice: 'Questionnaire was successfully destroyed.' }
      format.turbo_stream
    end
  end

  private

  def set_questionnaire
    @questionnaire = Questionnaire.find(params[:id])
  end

  def questionnaire_params
    params.require(:questionnaire).permit(:first_name, :last_name, :age, :height, :favourite_color, :sex)
  end
end
