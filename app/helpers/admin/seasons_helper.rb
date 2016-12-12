module Admin::SeasonsHelper
  def league_picker_values
    League.all.map { |l| [l.name, l.id] }
  end

  def selected_league
    return nil unless @admin_season
    @admin_season.league_id
  end

  def days_of_the_week
    [
      ['Sunday', 0],
      ['Monday', 1],
      ['Tuesday', 2],
      ['Wednesday', 3],
      ['Thursday', 4],
      ['Friday', 5],
      ['Saturday', 6]
    ]
  end

  def selected_day
    return nil unless @admin_season
    @admin_season.day
  end

  def years
    (2013..DateTime.now.year + 2).each { |y| [y.to_s, y] }
  end

  def selected_year
    return nil unless @admin_season
    @admin_season.year
  end

  def full_name
    return nil unless @admin_season
    "#{@admin_season.league.name} #{@admin_season.year}"
  end
end
