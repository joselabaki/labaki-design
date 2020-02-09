class StaticPagesController < ApplicationController
  def info
    @references = Reference.all
  end

  def contact
  end

  def construction
  render :layout => false
  end

end
