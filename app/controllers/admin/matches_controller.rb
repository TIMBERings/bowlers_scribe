class Admin::MatchesController < Admin::ApplicationController
  before_action :set_admin_match, only: [:show, :edit, :update, :destroy]

  # GET /admin/matches
  # GET /admin/matches.json
  def index
    @admin_matches = Match.order(:id).page params[:page]
  end

  # GET /admin/matches/1
  # GET /admin/matches/1.json
  def show
  end

  # GET /admin/matches/new
  def new
    @admin_match = Match.new
  end

  # GET /admin/matches/1/edit
  def edit
  end

  # POST /admin/matches
  # POST /admin/matches.json
  def create
    @admin_match = Match.new(admin_match_params)

    respond_to do |format|
      if @admin_match.save
        format.html { redirect_to @admin_match, success: 'Match was successfully created.' }
        format.json { render :show, status: :created, location: @admin_match }
      else
        format.html { render :new }
        format.json { render json: @admin_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/matches/1
  # PATCH/PUT /admin/matches/1.json
  def update
    respond_to do |format|
      if @admin_match.update(admin_match_params)
        format.html { redirect_to @admin_match, success: 'Match was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_match }
      else
        format.html { render :edit }
        format.json { render json: @admin_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/matches/1
  # DELETE /admin/matches/1.json
  def destroy
    @admin_match.destroy
    respond_to do |format|
      format.html { redirect_to admin_matches_url, success: 'Match was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_match
      @admin_match = Match.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_match_params
      params.fetch(:admin_match, {})
    end
end
