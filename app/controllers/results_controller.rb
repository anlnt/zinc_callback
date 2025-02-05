class ResultsController < ApplicationController
  def index
    render json: { test: 10 }
  end

  def create
    Rails.logger.info "---------------"
    Rails.logger.info "zinc_callback - START"
    Rails.logger.info "---------------"
    Rails.logger.info "params - #{params}"
    Rails.logger.info "---------------"
    Rails.logger.info "Request Header Keys: #{request.headers.env.keys.sort}}"
    Rails.logger.info "---------------"
    Rails.logger.info "ZINC signature: #{request.headers.env['HTTP_X_ZINC_WEBHOOK_SIGNATURE']}"
    Rails.logger.info "---------------"
    Rails.logger.info "zinc_callback - END"
    render json: { time: Time.now, ok: true }
  end
end
