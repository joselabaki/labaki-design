class StaticPagesController < ApplicationController
  def about
  end

  def contact
  end

  def construction
  render :layout => false
  end

end
