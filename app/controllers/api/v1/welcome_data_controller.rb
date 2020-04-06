module Api
  module V1
    class WelcomeDataController < ApplicationController
      skip_before_action :require_login

      def index
        @sponsors = Sponsor.active_sponsors
        @welcome_content = WelcomeContent.active_content
        @trails = Trail.active_groomed
        @ungroomed = Trail.active_ungroomed
        @junctions = Junction.where(active: true)
        @shelters = Shelter.where(active: true)
        @parking = []
      end
    end
  end
end
