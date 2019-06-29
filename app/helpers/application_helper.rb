module ApplicationHelper

  def active_page?(path)
    return current_page?(path)? "active" : ""
  end
end
