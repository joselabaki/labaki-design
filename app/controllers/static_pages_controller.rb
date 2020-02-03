class StaticPagesController < ApplicationController
  def info
  end

  def contact
  end

  def construction
  render :layout => false
  end

end
