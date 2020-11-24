[![Build Status](https://travis-ci.org/johnlucia/nordic-maps-api.svg?branch=master)](https://travis-ci.org/johnlucia/nordic-maps-api)
[![codecov](https://codecov.io/gh/johnlucia/nordic-maps-api/branch/master/graph/badge.svg)](https://codecov.io/gh/johnlucia/nordic-maps-api)

# Nordic Maps API

Rails App Supporting Bend Nordic Trail Maps [Bend Nordic Trail Maps](https://nordic-maps-api.herokuapp.com)
heroku run rake db:migrate --app nordic-maps-api
Trail.update_all(trail_type: 'ski')

# Rake Tasks
* build out a trail from a geojson file: `rake "trail:from_json[file-name]"`
* remove every other waypoint: `rake "trail:minify[id]"`
* `rake trail:from_official_kml[id]`
* `rake trail:from_usfs_kml[name]`


heroku run rake "trail:from_json[nordeen-snowshoe-tie-lower]" --app nordic-maps-api
heroku run rake "trail:from_json[nordeen-snowshoe-tie-middle]" --app nordic-maps-api
heroku run rake "trail:from_json[nordeen-snowshoe-tie-upper]" --app nordic-maps-api
heroku run rake "trail:from_json[snowshoe-long-loop-north]" --app nordic-maps-api
heroku run rake "trail:from_json[snowshoe-long-loop-south]" --app nordic-maps-api
heroku run rake "trail:from_json[snowshoe-loop-connect]" --app nordic-maps-api

bundle exec rake "trail:from_official_kml[ID_00127]"
bundle exec rake "trail:from_official_kml[ID_00128]"
bundle exec rake "trail:from_official_kml[ID_00129]"

heroku run rake "trail:from_official_kml[ID_00125]"  --app nordic-maps-api    MEISSNER SNOWSHOE LOOP
heroku run rake "trail:from_official_kml[ID_00126]"  --app nordic-maps-api   MEISSNER SNOWSHOE LOOP
heroku run rake "trail:from_official_kml[ID_00963]"  --app nordic-maps-api   MEISSNER SNOWSHOE LONG LOOP
bundle exec rake "trail:from_official_kml[]"
bundle exec rake "trail:from_official_kml[]"
bundle exec rake "trail:from_official_kml[]"
bundle exec rake "trail:from_official_kml[]"