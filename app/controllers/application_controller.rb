class ApplicationController < ActionController::Base
    before_action :set_paper_trail_whodunnit
    def user_for_paper_trail
        current_user.id
    end
end
