class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :florists]

  def home
  end

  def florists
  end
end
