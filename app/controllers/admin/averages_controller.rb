class Admin::AveragesController < Admin::ApplicationController
  before_action :set_admin_average, only: [:show, :edit, :update, :destroy]

  # GET /admin/averages
  # GET /admin/averages.json
  def index
    @admin_averages = Admin::Average.all
  end

  # GET /admin/averages/1
  # GET /admin/averages/1.json
  def show
  end

  # GET /admin/averages/new
  def new
    @admin_average = Admin::Average.new
  end

  # GET /admin/averages/1/edit
  def edit
  end

  # POST /admin/averages
  # POST /admin/averages.json
  def create
    @admin_average = Admin::Average.new(admin_average_params)

    respond_to do |format|
      if @admin_average.save
        format.html { redirect_to @admin_average, notice: 'Average was successfully created.' }
        format.json { render :show, status: :created, location: @admin_average }
      else
        format.html { render :new }
        format.json { render json: @admin_average.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/averages/1
  # PATCH/PUT /admin/averages/1.json
  def update
    respond_to do |format|
      if @admin_average.update(admin_average_params)
        format.html { redirect_to @admin_average, notice: 'Average was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_average }
      else
        format.html { render :edit }
        format.json { render json: @admin_average.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/averages/1
  # DELETE /admin/averages/1.json
  def destroy
    @admin_average.destroy
    respond_to do |format|
      format.html { redirect_to admin_averages_url, notice: 'Average was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_average
      @admin_average = Admin::Average.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_average_params
      params.fetch(:admin_average, {})
    end
end
