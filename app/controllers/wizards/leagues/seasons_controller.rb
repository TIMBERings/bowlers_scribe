class Wizards::Season::SeasonsController < Wizards::ApplicationController

  def new
    @season = Season.new
    render 'wizards/leagues/season'
  end

  def create
    @season = Season.new(admin_season_params)

    respond_to do |format|
      if @season.save
        flash[:success] = 'Season was successfully created.'
        format.html { redirect_to admin_season_url(@admin_season) }
      else
        format.html { render :new }
      end
    end

  end

  private

  def season_params
    params.require(:season).permit(:id, :league_id, :year, :day, :start_date, :number_of_weeks, :roll_off_weeks, :dates_off, :handicap_base, :handicap_percent, :location, :practice_length, :starts_at)
  end
end
