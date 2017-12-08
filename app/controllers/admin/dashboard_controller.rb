class Admin::DashboardController < ApplicationController
  private
  http_basic_authenticate_with name: "Jungle", password: "book"

  def show
  end
end
