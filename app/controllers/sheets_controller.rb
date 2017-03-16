class SheetsController < ApplicationController
  include Points
  
  before_filter :authenticate_user!
  before_action :set_sheet, only: [:show, :edit, :update, :destroy]
  
  # def index
#     @sheets = Sheet.all
#
#     respond_to do |format|
#       format.html # index.html.erb
#       format.json { render json: @teams }
#     end
#   end
  
  def my_brackets
    authorize(Sheet)
    master_sheet = Sheet.where(is_master: true)
    @sheets = Sheet.where(user_id: current_user.id, is_master: false).order("name")
    @sheets = master_sheet + @sheets
    @master = Sheet.where(is_master: true).first
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sheets }
    end
  end
  
  def get_points
    authorize(Sheet)
    @master = Sheet.where("is_master = ?", true).first
    @sheets = Sheet.where("is_master = ?", false)
    @sheets.each do |sheet|
    	calculate(sheet, @master)
    end
    flash[:success] = "Points have been calculated"
    respond_to do |format|
      format.html { redirect_to leaders_path }
    end
  end
  
  def leaders
    authorize(Sheet)
    @sheets = Sheet.where("is_master = ?", false).order("total_points desc")
  end
  
  def lock_sheets
    authorize(Sheet)
    @sheets = Sheet.where("is_master = ?", false)
    @sheets.each do |sheet|
    	sheet.update_attribute(:is_locked, true)
    end
    flash[:success] = "Brackets are now locked"

    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end
  
  def new
    authorize(Sheet)
    @sheet = Sheet.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    authorize(@sheet)
  end

  def create
    authorize(Sheet)
    @sheet = Sheet.new(sheet_params)
    @sheet.user_id = current_user.id
    @sheet.last_edit_by = current_user.id
    respond_to do |format|
      if @sheet.save
        format.html { redirect_to(@sheet, :notice => 'Your bracket was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
    authorize(@sheet)
    @sheet.last_edit_by = current_user.id
    respond_to do |format|
      if @sheet.update(sheet_params)
        format.html { redirect_to(@sheet, :notice => 'Your bracket was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end
  
  def show
    authorize(@sheet)
    @master = Sheet.where("is_master = ?", true).first
    respond_to do |format|
      format.html # show.html.erb
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sheet
      @sheet = Sheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sheet_params
      params.require(:sheet).permit(:name, :round1g1a, :round1g2a, :round1g3a, :round1g4a, :round1g5a, :round1g6a, :round1g7a, 
    :round1g8a, :round1g9a, :round1g10a, :round1g11a, :round1g12a, :round1g13a, :round1g14a, :round1g15a, :round1g16a, 
    :round1g1b, :round1g2b, :round1g3b, :round1g4b, :round1g5b, :round1g6b, :round1g7b, :round1g8b, :round1g9b, 
    :round1g10b, :round1g11b, :round1g12b, :round1g13b, :round1g14b, :round1g15b, :round1g16b, :round2g1a, :round2g2a, 
    :round2g3a, :round2g4a, :round2g5a, :round2g6a, :round2g7a, :round2g8a, :round2g1b, :round2g2b, :round2g3b, 
    :round2g4b, :round2g5b, :round2g6b, :round2g7b, :round2g8b, :round3g1a, :round3g2a, :round3g3a, :round3g4a,
    :round3g1b, :round3g2b, :round3g3b, :round3g4b, :round4g1, :round4g2, :round4g3, :round4g4, :round5g1, :round5g2,
    :round6, :is_master, :round1pts, :round2pts, :round3pts, :round4pts, :round5pts, :round6pts, :total_points, :is_paid, :last_edit_by, :is_locked )
    end
end
