class PostGraduationsController < ApplicationController
  before_action :set_post_graduation, only: %i[show edit update destroy]

  # GET /post_graduations
  # GET /post_graduations.json
  def index
    @post_graduations = PostGraduation.all
  end

  # GET /post_graduations/1
  # GET /post_graduations/1.json
  def show; end

  # GET /post_graduations/new
  def new
    @post_graduation = PostGraduation.new
  end

  # GET /post_graduations/1/edit
  def edit; end

  # POST /post_graduations
  # POST /post_graduations.json
  def create
    @post_graduation = PostGraduation.new(post_graduation_params)

    respond_to do |format|
      if @post_graduation.save
        format.html { redirect_to post_graduations_path }
        format.json { render :show, status: :created, location: @post_graduation }
      else
        format.html { render :new }
        format.json { render json: @post_graduation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_graduations/1
  # PATCH/PUT /post_graduations/1.json
  def update
    respond_to do |format|
      if @post_graduation.update(post_graduation_params)
        format.html { redirect_to @post_graduation, notice: 'Post graduation was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_graduation }
      else
        format.html { render :edit }
        format.json { render json: @post_graduation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_graduations/1
  # DELETE /post_graduations/1.json
  def destroy
    @post_graduation.destroy
    respond_to do |format|
      format.html { redirect_to post_graduations_url, notice: 'Post graduation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post_graduation
    @post_graduation = PostGraduation.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def post_graduation_params
    params.require(:post_graduation).permit(:name, :initials, :seniority, :status)
  end
end
