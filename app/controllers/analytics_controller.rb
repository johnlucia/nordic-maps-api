class AnalyticsController < ApplicationController
  def index
    @load_count = UsageTracker.homescreen_load_count
  end
end
