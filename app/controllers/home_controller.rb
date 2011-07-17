class HomeController < ApplicationController
  def index
    @checkins = Checkin.where(:checked_out_at => nil)
    @checkin = Checkin.new
    respond_to do |format|
      format.html
      format.json { render :json => @checkins }
    end
  end

end
