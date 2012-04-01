class SystemController < ApplicationController
	before_filter :authenticate_user!, :except => [:some_action_without_auth]
end
