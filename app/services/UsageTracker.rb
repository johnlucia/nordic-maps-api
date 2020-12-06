class UsageTracker

  def self.count_homescreen_load
    new.count_homescreen_load
  end

  def self.homescreen_load_count(total_days=10)
    screen_view_data = {}
    Date.today.downto(Date.today - total_days.days) do |date|
      screen_view_data[date.to_s] = new(date).todays_homescreen_views
    end
    screen_view_data
  end

  def initialize(date=Date.today)
    @day = date.to_s
  end

  def count_homescreen_load
    HOMESCREEN_VIEWS.incr(@day)
  end

  def todays_homescreen_views
    HOMESCREEN_VIEWS.get(@day)
  end
end
