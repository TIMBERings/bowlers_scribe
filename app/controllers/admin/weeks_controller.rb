class Admin::WeeksController < Admin::ApplicationController
  before_action :set_admin_week, only: [:show, :edit, :update, :destroy]

  # GET /admin/weeks
  # GET /admin/weeks.json
  def index
    @admin_weeks = Week.order(:id).page params[:page]
  end

  # GET /admin/weeks/1
  # GET /admin/weeks/1.json
  def show
  end

  # GET /admin/weeks/new
  def new
    @admin_week = Week.new
  end

  # GET /admin/weeks/1/edit
  def edit
  end

  # POST /admin/weeks
  # POST /admin/weeks.json
  def create
    @admin_week = Week.new(admin_week_params)

    respond_to do |format|
      if @admin_week.save
        format.html { redirect_to @admin_week, success: 'Week was successfully created.' }
        format.json { render :show, status: :created, location: @admin_week }
      else
        format.html { render :new }
        format.json { render json: @admin_week.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/weeks/1
  # PATCH/PUT /admin/weeks/1.json
  def update
    respond_to do |format|
      if @admin_week.update(admin_week_params)
        format.html { redirect_to @admin_week, success: 'Week was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_week }
      else
        format.html { render :edit }
        format.json { render json: @admin_week.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/weeks/1
  # DELETE /admin/weeks/1.json
  def destroy
    @admin_week.destroy
    respond_to do |format|
      format.html { redirect_to admin_weeks_url, success: 'Week was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_week
      @admin_week = Week.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_week_params
      params.fetch(:admin_week, {})
    end
end
