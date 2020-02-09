class BackendController < ApplicationController

  before_action :authenticate_admin!


  def cms
    @projects = Project.all
    @references = Reference.all
  end
end
