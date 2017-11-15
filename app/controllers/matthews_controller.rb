class MatthewsController < ApplicationController
  before_action :set_matthew, only: [:show, :edit, :update, :destroy]

  # GET /matthews
  # GET /matthews.json
  def index
    @matthews = Matthew.all
  end

  # GET /matthews/1
  # GET /matthews/1.json
  def show
  end

  # GET /matthews/new
  def new
    @matthew = Matthew.new
  end

  # GET /matthews/1/edit
  def edit
  end

  # POST /matthews
  # POST /matthews.json
  def create
    @matthew = Matthew.new(matthew_params)

    respond_to do |format|
      if @matthew.save
        format.html { redirect_to @matthew, notice: 'Matthew was successfully created.' }
        format.json { render :show, status: :created, location: @matthew }
      else
        format.html { render :new }
        format.json { render json: @matthew.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matthews/1
  # PATCH/PUT /matthews/1.json
  def update
    respond_to do |format|
      if @matthew.update(matthew_params)
        format.html { redirect_to @matthew, notice: 'Matthew was successfully updated.' }
        format.json { render :show, status: :ok, location: @matthew }
      else
        format.html { render :edit }
        format.json { render json: @matthew.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matthews/1
  # DELETE /matthews/1.json
  def destroy
    @matthew.destroy
    respond_to do |format|
      format.html { redirect_to matthews_url, notice: 'Matthew was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matthew
      @matthew = Matthew.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matthew_params
      params.require(:matthew).permit(:login)
    end
end
