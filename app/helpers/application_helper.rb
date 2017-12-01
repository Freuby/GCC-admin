module ApplicationHelper

def flash_class(level)
    case level
      when 'notice' then "alert alert-info"
      when 'success' then "alert alert-success"
      when 'error' then "alert alert-danger"
      when 'alert' then "alert alert-warning"
    end
end

def field_class(resource, field_name)
  if resource.errors[field_name].present?
    return "error".html_safe
  else
    return "".html_safe
  end
end

end
