class UsageTracker
  TIME_ZONE = "Pacific Time (US & Canada)"

  def self.count_homescreen_load
    new.count_homescreen_load
  end

  def self.homescreen_load_count(total_days=21)
    screen_view_data = {}

    Date.today.downto(self.today - total_days.days) do |date|
      screen_view_data[date.to_s] = new(date).todays_homescreen_views
    end
    screen_view_data
  end

  def self.today
    Time.now.in_time_zone(TIME_ZONE).to_date
  end

  def initialize(date=nil)
    date ||= self.class.today
    @day = date.to_s
  end

  def count_homescreen_load
    HOMESCREEN_VIEWS.incr(@day) if ENV['REDISCLOUD_URL']
  end

  def todays_homescreen_views
    HOMESCREEN_VIEWS.get(@day) if ENV['REDISCLOUD_URL']
  end
end
