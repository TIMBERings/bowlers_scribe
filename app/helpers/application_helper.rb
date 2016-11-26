module ApplicationHelper
  def alert_class(flash_type)
    case flash_type
    when 'success'
      'alert-success'
    when 'error'
      'alert-danger'
    when 'alert'
      'alert-warning'
    when 'notice', 'info'
      'alert-info'
    else
      flash_type
    end
  end

  def admin_dashboard?
    controller_path.include? 'admin/'
  end

  def day_week_month(date)
    date.strftime('%m/%d/%Y')
  end

  def current_controller?(value)
    controller_path == value
  end
end
