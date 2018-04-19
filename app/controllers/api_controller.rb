class ApiController < ApplicationController
  def articles
    render json:Article.order(time: :desc).paginate(page: params[:page]).per_page(10).to_json()
  end
end
