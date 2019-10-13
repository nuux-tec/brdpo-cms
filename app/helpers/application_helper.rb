module ApplicationHelper
  def courses_page?
    not controller_path.match('courses').nil?
  end

  def events_page?
    not controller_path.match('events').nil?
  end

  def news_page?
    not controller_path.match('news').nil?
  end
end
