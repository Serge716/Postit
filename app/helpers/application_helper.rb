module ApplicationHelper

  def fix_url(string)
    string.starts_with?('http://') ? string : "http://#{string}"
  end

  def display_datetime(datetime)
    datetime.strftime("%m/%d/%Y %l:%M%P %Z")
  end
end
