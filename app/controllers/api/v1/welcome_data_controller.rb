module Api
  module V1
    class WelcomeDataController < ApplicationController
      skip_before_action :require_login

      def index
        @main_sponsor = Sponsor.main_sponsor
        @secondary_sponsors = Sponsor.secondary_sponsors
        @welcome_content = WelcomeContent.where(active: true).order(:position)
      end
    end
  end
end
