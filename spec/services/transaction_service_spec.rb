require 'rails_helper'

RSpec.describe TransactionService do
  describe '#create_bulk' do
    it 'creates multiple transactions' do
      expect {
        TransactionService.create_bulk
      }.to change(Transaction, :count).to be > 0
    end
  end

  describe '#create_single' do
    it 'creates a single transaction' do
      expect {
        TransactionService.create_single
      }.to change(Transaction, :count).to be > 0
    end
  end
end
