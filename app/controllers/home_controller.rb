class HomeController < ApplicationController
    def index
        render html: request.remote_ip
    end
end
