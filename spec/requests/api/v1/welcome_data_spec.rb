require 'rails_helper'

RSpec.describe "WelcomeData", type: :request do
  let(:valid_trail_json) { '[{"longitude": -121.52, "latitude": 43.98},{"longitude": -121.53, "latitude": 43.99},{"longitude": -121.54, "latitude": 43.99}]' }

  describe "GET /api/v1/welcome_data" do
    context "no data to show" do
      let(:empty_data_set) {
        { 'sponsors' => [],
          'welcome_content' => [],
          'trails' => [],
          "ungroomed" => [],
          'junctions' => [],
          'parking' => [],
          'shelters' => [] }
      }

      it "returns empty arrays" do
        get '/api/v1/welcome_data.json'
        expect(JSON.parse(response.body)).to eq(empty_data_set)
      end
    end

    context "JSON Payloads" do
      before(:each) do
        Junction.create!(name: "Active Junction 1", latitude: "44.5", longitude: "-121.5", active: true)
        Junction.create!(name: "Active Junction 2", latitude: "44.6", longitude: "-121.6", active: true)
        Junction.create!(name: "Inactive Junction", latitude: "44.7", longitude: "-121.7", active: false)
      
        Sponsor.create!(name: "Second Sponsor", logo_url: "Logo Url", link_url: "Link Url",
                        position: 3, active: true, description: "MyText", notes: "MyText" )
        Sponsor.create!(name: "First Sponsor", logo_url: "Logo Url", link_url: "Link Url",
                        position: 2, active: true, description: "MyText", notes: "MyText" )
        Sponsor.create!(name: "Inactive Sponsor", logo_url: "Logo Url", link_url: "Link Url",
                        position: 1, active: false, description: "MyText", notes: "MyText")

        Trail.create!(name: "Trail 1", uid: SecureRandom.hex, color: "Color", length: "Length", level: 2,
                      groomed: true, active: true, description: "MyText", coordinates_json: valid_trail_json)
        Trail.create!(name: "Trail 2", uid: SecureRandom.hex, color: "Color", length: "Length", level: 2,
                      groomed: true, active: true, description: "MyText", coordinates_json: valid_trail_json)
        Trail.create!(name: "Inactive Trail", uid: SecureRandom.hex, color: "Color", length: "Length", groomed: true,
                      level: 2, active: false, description: "MyText", coordinates_json: valid_trail_json)

        Trail.create!(name: "Ungroomed 1", uid: SecureRandom.hex, color: "Color", length: "Length", level: 2,
          groomed: false, active: true, description: "MyText", coordinates_json: valid_trail_json)
        Trail.create!(name: "Ungroomed 2", uid: SecureRandom.hex, color: "Color", length: "Length", level: 2,
                      groomed: false, active: true, description: "MyText", coordinates_json: valid_trail_json)
        Trail.create!(name: "Inactive Trail", uid: SecureRandom.hex, color: "Color", length: "Length", groomed: false,
                      level: 2, active: false, description: "MyText", coordinates_json: valid_trail_json)

        WelcomeContent.create!( heading: "Second Section", body: "MyText", link_text: "Link Text",
                                link_url: "Link Url", position: 2, active: true )
        WelcomeContent.create!( heading: "First Section", body: "MyText", link_text: "Link Text",
                                link_url: "Link Url", position: 1, active: true )
        WelcomeContent.create!( heading: "Inactive Section", body: "MyText", link_text: "Link Text",
                                link_url: "Link Url", position: 1, active: false )

        Shelter.create!(name: "shelter 1", uid: "shelter-1", latitude: "44.5", longitude: "-121.5", active: true)
        Shelter.create!(name: "shelter 2", uid: "shelter-2", latitude: "44.6", longitude: "-121.6", active: true)
        Shelter.create!(name: "shelter 3", uid: "shelter-3", latitude: "44.7", longitude: "-121.7", active: false )
      end

      let(:payload) {
        get '/api/v1/welcome_data.json'
        JSON.parse(response.body)
      }

      let(:welcome_content) { payload['welcome_content'] }
      let(:junctions)       { payload['junctions'] }
      let(:sponsors)        { payload['sponsors'] }
      let(:shelters)        { payload['shelters'] }
      let(:trails)          { payload['trails'] }
      let(:ungroomed)       { payload['ungroomed'] }

      context "Welcome Content:" do
        it "delivers welcome content in the correct order" do
          headings = welcome_content.map { |item| item['heading'] }
          expect(headings).to eq ["First Section", "Second Section"]
        end
      end

      context "Sponsors:" do
        it "delivers sponsors in the correct order" do
          names = sponsors.map { |item| item['name'] }
          expect(names).to eq ["First Sponsor", "Second Sponsor"]
        end
      end

      context "Junctions:" do
        it "delivers the correct junctions" do
          names = junctions.map { |item| item['name'] }
          expect(names.length).to eq(2)
          expect(names).to include("Active Junction 1", "Active Junction 2")
        end

        it "attaches a coordinate attribute to junctions" do
          coordinate = junctions[0]['coordinate']
          expect(coordinate['latitude']).to_not be nil
          expect(coordinate['longitude']).to_not be nil
        end
      end

      context "Shelters:" do
        it "delivers the correct shelters" do
          names = shelters.map { |item| item['name'] }
          expect(names.length).to eq(2)
          expect(names).to include("shelter 1", "shelter 2")
        end

        it "attaches a coordinate attribute to junctions" do
          coordinate = junctions[0]['coordinate']
          expect(coordinate['latitude']).to_not be nil
          expect(coordinate['longitude']).to_not be nil
        end
      end

      context "Trails:" do
        it "delivers the correct trails" do
          names = trails.map { |item| item['name'] }
          expect(names.length).to eq(2)
          expect(names).to include("Trail 1", "Trail 2")
        end

        it "delivers a coordinate array with each trail" do
          coordinates = trails[0]['coordinates']
          first_latitude = coordinates[0]['latitude']
          first_longitude = coordinates[0]['longitude']
          expect(first_latitude).to eq(43.98)
          expect(first_longitude).to eq(-121.52)
        end
      end


      context "Ungroomed Trails:" do
        it "delivers the correct ungroomed trails" do
          names = ungroomed.map { |item| item['name'] }
          expect(names.length).to eq(2)
          expect(names).to include("Ungroomed 1", "Ungroomed 2")
        end

        it "delivers a coordinate array with each trail" do
          coordinates = ungroomed[0]['coordinates']
          first_latitude = coordinates[0]['latitude']
          first_longitude = coordinates[0]['longitude']
          expect(first_latitude).to eq(43.98)
          expect(first_longitude).to eq(-121.52)
        end
      end
    end
  end
end
