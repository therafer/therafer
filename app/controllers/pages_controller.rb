class PagesController < ApplicationController

  def project
    @project = Project.all
  end

end
