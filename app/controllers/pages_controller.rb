class PagesController < ApplicationController


  def home
    @mechanics = User.where(mechanic: true)
  end

  def confirmation
  end

  def profile
    
  end
end
