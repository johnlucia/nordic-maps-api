namespace :trail do
  task :from_json, [:file_name] => :environment do |task, args|

    file=File.read("#{Rails.root}/geojson/#{args.file_name}.json")
    data=JSON.parse(file)
    coordinates = data['features'].first['geometry']['coordinates']

    coordinates_array = coordinates.map { |coordinate| {latitude: coordinate[1], longitude: coordinate[0]} }

    trail = Trail.create( name: args.file_name,
                          uid: args.file_name,
                          active: false,
                          coordinates_json: coordinates_array.to_json )

    puts trail.inspect
    
  end
end
