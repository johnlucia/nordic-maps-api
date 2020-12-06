if ENV["REDISCLOUD_URL"]
  redis_connection = Redis.new(:url => ENV["REDISCLOUD_URL"])

  HOMESCREEN_VIEWS = Redis::Namespace.new(:homescreen_views, redis: redis_connection)
end
