class VisitationsController < ApplicationController
  before_action :set_visitation, only: %i[show edit update destroy]

  # GET /visitations
  # GET /visitations.json
  def index
    @visitations = Visitation.all
  end

  # GET /visitations/1
  # GET /visitations/1.json
  def show; end

  # GET /visitations/new
  def new
    @visitation = Visitation.new
  end

  # GET /visitations/1/edit
  def edit; end

  # POST /visitations
  # POST /visitations.json
  def create
    @visitation = Visitation.new(visitation_params)

    respond_to do |format|
      if @visitation.save
        format.html { redirect_to @visitation, notice: 'Visitation was successfully created.' }
        format.json { render :show, status: :created, location: @visitation }
      else
        format.html { render :new }
        format.json { render json: @visitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visitations/1
  # PATCH/PUT /visitations/1.json
  def update
    respond_to do |format|
      if @visitation.update(visitation_params)
        format.html { redirect_to @visitation, notice: 'Visitation was successfully updated.' }
        format.json { render :show, status: :ok, location: @visitation }
      else
        format.html { render :edit }
        format.json { render json: @visitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visitations/1
  # DELETE /visitations/1.json
  def destroy
    @visitation.destroy
    respond_to do |format|
      format.html { redirect_to visitations_url, notice: 'Visitation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_visitation
    @visitation = Visitation.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def visitation_params
    params.require(:visitation).permit(:visitor_id, :user_id, :section_id, :input, :output)
  end
end
