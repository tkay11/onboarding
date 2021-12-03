class Web::PollsController < Web::ApplicationController
  before_action :set_poll, only: %i[show edit update destroy]

  # GET /polls
  def index
    add_breadcrumbs(polls_path, "Опросы")
    @polls = Poll.all
  end

  # GET /polls/1
  def show
    add_breadcrumbs(polls_path, @poll.title)

    @poll_questions = @poll.poll_questions
  end

  # GET /polls/new
  def new
    add_breadcrumbs(polls_path, "Опросы")
    add_breadcrumbs(polls_path, "Новый опрос")
    @poll = Poll.new
  end

  # GET /polls/1/edit
  def edit; end

  # POST /polls
  def create
    @poll = Poll.new(poll_params)

    if @poll.save
      redirect_to poll_questions_path(poll_id: @poll.id), notice: 'Poll was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /polls/1
  def update
    if @poll.update(poll_params)
      redirect_to @poll, notice: 'Poll was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /polls/1
  def destroy
    @poll.destroy
    redirect_to polls_url, notice: 'Poll was successfully destroyed.'
  end

  private

  def set_poll
    @poll = Poll.includes(poll_questions: :poll_answers).find(params[:id])
    add_breadcrumbs(polls_path, "Опросы")
  end

  def poll_params
    params.require(:poll).permit(:title, :description)
  end
end
