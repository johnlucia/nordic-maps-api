require 'rails_helper'

RSpec.describe Trail, type: :model do
  let(:valid_json) { '[{"longitude": -121.52, "latitude": 43.98},{"longitude": -121.53, "latitude": 43.99},{"longitude": -121.54, "latitude": 43.99}]' }
  let(:invalid_json) { 'some garbage' }
  let(:not_enough_data) { '[{"longitude": -121.52, "latitude": 43.98},{"longitude": -121.53, "latitude": 43.99}]' }
  let(:trail_1) { Trail.new( name: "Trail 1",
                              color: "blue",
                              length: "1.0",
                              level: 1,
                              active: true,
                              description: "whatever",
                              coordinates_json: valid_json )}

  let(:trail_2) { Trail.new(  name: "Trail 2",
                              color: "green",
                              length: "2.0",
                              level: 2,
                              active: true,
                              description: "whatever",
                              coordinates_json: invalid_json )}

  let(:trail_3) { Trail.new(  name: "Trail 2",
                              color: "yellow",
                              length: "2.0",
                              level: 2,
                              active: true,
                              description: "whatever",
                              coordinates_json: not_enough_data )}


  
                                
  context "Validating Coordinates JSON" do
    it 'accepts valid JSON' do
      expect{ trail_1.save }.to change{Trail.all.count}.by(1)
    end

    it 'rejects bad JSON' do
      expect(trail_2.valid?).to be false
    end

    it 'rejects a trail with fewer than 3 waypoints' do
      expect(trail_2.valid?).to be false
    end
  end
end
