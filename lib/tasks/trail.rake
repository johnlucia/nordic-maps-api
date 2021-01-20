namespace :trail do
  task :from_json, [:file_name] => :environment do |task, args|

    file=File.read("#{Rails.root}/geojson/#{args.file_name}.json")
    data=JSON.parse(file)
    
    data['features'].each_with_index do |track, index|
      coordinates = track['geometry']['coordinates']
      coordinates_array = coordinates.map { |coordinate| {latitude: coordinate[1], longitude: coordinate[0]} }

      trail = Trail.create( name: args.file_name,
                            uid: "#{args.file_name}-#{index}",
                            active: false,
                            coordinates_json: coordinates_array.to_json )

      puts trail.inspect
    end
  end

  task :minify, [:id] => :environment do |task, args|
    trail = Trail.find args.id
    big_array = JSON.parse(trail.coordinates_json)
    # always preserve first item in array
    small_array = [ big_array[0] ]
    big_array.each_with_index do |value, index|
      small_array << value if index.even?
    end

    trail.update_attributes(coordinates_json: small_array.to_json)
    puts "Reduced #{trail.name} from #{big_array.length} to #{small_array.length}"
  end
end
