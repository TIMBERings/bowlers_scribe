module ApplicationHelper
  def alert_class(flash_type)
    case flash_type
    when :success
      'alert-success'
    when :error
      'alert-error'
    when :alert
      'alert-block'
    when :notice
      'alert-info'
    else
      flash_type.to_s
    end
  end

  def admin_header?
    controller_path.include? 'admin/'
  end
end
