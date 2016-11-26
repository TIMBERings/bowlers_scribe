class Admin::LeaguesController < Admin::ApplicationController
  before_action :set_admin_league, only: [:show, :edit, :update, :destroy]
  # GET /admin/leagues
  # GET /admin/leagues.json
  def index
    @admin_leagues = League.order(:id).page params[:page]
  end

  # GET /admin/leagues/1
  # GET /admin/leagues/1.json
  def show
  end

  # GET /admin/leagues/new
  def new
    @users = User.all
    @admin_league = League.new
  end

  # GET /admin/leagues/1/edit
  def edit
  end

  # POST /admin/leagues
  # POST /admin/leagues.json
  def create
    @admin_league = League.new(admin_league_params)

    respond_to do |format|
      if @admin_league.save
        flash[:success] = 'League was successfully created.'
        format.html { redirect_to admin_league_url(@admin_league) }
        format.json { render :show, status: :created, location: @admin_league }
      else
        format.html { render :new }
        format.json { render json: @admin_league.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/leagues/1
  # PATCH/PUT /admin/leagues/1.json
  def update
    respond_to do |format|
      if @admin_league.update(admin_league_params)
        flash[:success] = 'League was successfully updated.'
        format.html { redirect_to admin_league_url(@admin_league) }
        format.json { render :show, status: :ok, location: @admin_league }
      else
        format.html { render :edit }
        format.json { render json: @admin_league.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/leagues/1
  # DELETE /admin/leagues/1.json
  def destroy
    @admin_league.destroy
    respond_to do |format|
      flash[:success] = 'League was successfully destroyed.'
      format.html { redirect_to admin_leagues_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_league
      @admin_league = League.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_league_params
      params.require(:league).permit(:name, :manager_id)
    end
end
