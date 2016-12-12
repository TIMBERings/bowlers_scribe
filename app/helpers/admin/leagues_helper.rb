module Admin::LeaguesHelper
  def manager_picker_values
    User.all.map { |l| [l.full_name, l.id] }
  end

  def selected_manager
    @admin_league ? @admin_league.manager_id : nil
  end
end
