class StyLiSHesController < ApplicationController
  before_action :set_sty_li_sh, only: [:show, :edit, :update, :destroy]

  # GET /sty_li_shes
  # GET /sty_li_shes.json
  def index
    @sty_li_shes = StyLiSh.all
  end

  # GET /sty_li_shes/1
  # GET /sty_li_shes/1.json
  def show
  end

  # GET /sty_li_shes/new
  def new
    @sty_li_sh = StyLiSh.new
  end

  # GET /sty_li_shes/1/edit
  def edit
  end

  # POST /sty_li_shes
  # POST /sty_li_shes.json
  def create
    @sty_li_sh = StyLiSh.new(sty_li_sh_params)

    respond_to do |format|
      if @sty_li_sh.save
        format.html { redirect_to @sty_li_sh, notice: 'Sty li sh was successfully created.' }
        format.json { render :show, status: :created, location: @sty_li_sh }
      else
        format.html { render :new }
        format.json { render json: @sty_li_sh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sty_li_shes/1
  # PATCH/PUT /sty_li_shes/1.json
  def update
    respond_to do |format|
      if @sty_li_sh.update(sty_li_sh_params)
        format.html { redirect_to @sty_li_sh, notice: 'Sty li sh was successfully updated.' }
        format.json { render :show, status: :ok, location: @sty_li_sh }
      else
        format.html { render :edit }
        format.json { render json: @sty_li_sh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sty_li_shes/1
  # DELETE /sty_li_shes/1.json
  def destroy
    @sty_li_sh.destroy
    respond_to do |format|
      format.html { redirect_to sty_li_shes_url, notice: 'Sty li sh was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sty_li_sh
      @sty_li_sh = StyLiSh.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sty_li_sh_params
      params.require(:sty_li_sh).permit(:title, :body, :author, :image)
    end
end
