class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @mechanics = User.where(mechanic: true)
  end

  def confirmation
  end
end