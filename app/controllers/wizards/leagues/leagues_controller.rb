class Wizards::Leagues::LeaguesController < ApplicationController

  def new
    @league = League.new
  end

  def create
    binding.pry
    @league = League.new(league_params)

    respond_to do |format|
      if @league.save
        flash[:success] = 'League was successfully created.'
        format.html { redirect_to new_wizards_leagues_season_path }
      else
        format.html { render :new }
      end
    end
  end

  private

  def league_params
    params.require(:league).permit(:name, :manager_id)
  end
end
