class Api::V1::TransactionsController < ApplicationController
  def bulk
    begin
      processed_count = TransactionService.create_bulk
      render json: { status: "success", processed_count: processed_count }
    rescue ActiveRecord::RecordInvalid => e
      render json: { error: e.message }, status: :unprocessable_entity
    end
  end

  def single
    begin
      @transation = TransactionService.create_single
      render json: {  status: "success", transaction_id: @transation.id }
    rescue ActiveRecord::RecordInvalid => e
      render json: { error: e.message }, status: :unprocessable_entity
    end
  end 
end
