class Web::Polls::QuestionsController < Web::ApplicationController
  before_action :set_poll
  before_action :set_poll_question, only: %i[show edit update destroy]
  prepend_view_path 'web/polls/questions'

  def index
    @poll_questions = PollQuestion.where(poll: @poll)
  end

  # GET /poll_questions/1
  def show; end

  # GET /poll_questions/new
  def new
    @poll_question = PollQuestion.new
  end

  # GET /poll_questions/1/edit
  def edit; end

  # POST /poll_questions
  def create
    args = poll_question_params.merge(poll: @poll)
    @poll_question = PollQuestion.new(args)

    if @poll_question.save
      redirect_to poll_question_path(@poll), notice: 'Poll question was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /poll_questions/1
  def update
    args = poll_question_params.merge(poll: @poll)
    if @poll_question.update(args)
      redirect_to @poll_question, notice: 'Poll question was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /poll_questions/1
  def destroy
    @poll_question.destroy
    redirect_to poll_question_path(@poll), notice: 'Poll question was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_poll_question
    set_poll if params[:poll_id].present?
    @poll_question = PollQuestion.find(params[:id])
  end

  def set_poll
    @poll = Poll.find(params[:poll_id])
    add_breadcrumbs(polls_path, "Опросы")
  end

  # Only allow a list of trusted parameters through.
  def poll_question_params
    params.fetch(:poll_question, {})
  end
end
