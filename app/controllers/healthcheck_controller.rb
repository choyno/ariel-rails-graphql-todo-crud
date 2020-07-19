class HealthcheckController < ApplicationController
  def index
    render layout: false,  json: {}, status: :ok
  end
end
