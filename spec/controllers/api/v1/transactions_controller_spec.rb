require 'rails_helper'

RSpec.describe Api::V1::TransactionsController, type: :controller do
  describe 'POST #bulk' do
    it 'creates multiple transactions' do
      post :bulk
      expect(response.status).to eq("success")
      expect(response.processed_count).to eq(Transaction.count)
    end
  end

  describe 'POST #single' do
    it 'creates a single transaction' do
      post :single
      expect(response.status).to eq("success")
      expect(Transaction.count).to be > 0
    end
  end
end
