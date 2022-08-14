class PagesController < ApplicationController
  
  def home
  end
  
  def contact
    @bands = ["suuns", "badbadnotgood", "tony carreira", "quim barreiros"]

    if params[:member]
      @bands = @bands.select { |band| band.start_with?(params[:member]) }
    end
  end

  def about
    @date = Date.today
  end
end
