class InviteController < ApplicationController
  def send_confirm
    u = Current.session.user
    @attending = params["attending"]
    if @attending.blank?
      @error = "You need to say if you are attending!"
    else
      u.attending = @attending
      u.save!
    end
  end
end
