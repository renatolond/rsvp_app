# frozen_string_literal: true

class AdminController < ApplicationController
  before_action :admin?
  def list; end

  private

  def admin?
    redirect_to "/" unless Current.user.admin?
  end
end
