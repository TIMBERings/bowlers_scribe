module Admin::ApplicationHelper
  def date_format(date)
    date.strftime('%m/%d/%Y')
  end

  def user_picker_values
    User.all.map { |l| [l.full_name, l.id] }
  end

  def selected_user
    @admin_team ? @admin_team.captain_id : nil
  end

  private

  def users
    @users ||= User.all.order(:id)
  end
end