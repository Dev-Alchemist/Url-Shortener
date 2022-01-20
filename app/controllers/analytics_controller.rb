# frozen_string_literal: true

class AnalyticsController < ApplicationController
  def show
    url_id = Url.find_by(short_code: params[:shortcode]).id
    @visitors = Analytic.where(url_id: url_id).all
    @total_click_count = Analytic.where(url_id: url_id).sum('click_count')
    @total_unique_visitors = Analytic.where(url_id: url_id).count
  end
end
