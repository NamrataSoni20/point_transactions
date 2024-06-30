require 'net/http'

class TransactionService
  SINGLE_TRANS_BASE_URL = 'https://mocked-api-vendor.example.com/api/transation/single'.freeze
  BULK_TRANS_BASE_URL = 'https://mocked-api-vendor.example.com/api/transations/bulk'.freeze

  def self.create_single
    response = Net::HTTP.get(URI(SINGLE_TRANS_BASE_URL))
    transation_data = JSON.parse(response)
    transation_data.each do |data|
      record = create_transaction(data)
      return record
    end
  end

  def self.create_bulk
    processed_count = 0
    response = Net::HTTP.get(URI(BULK_TRANS_BASE_URL))
    transation_data = JSON.parse(response)
    transation_data.each do |data|
      create_transaction(data)
      processed_count +=1
    end 
    return processed_count
  end

  def self.create_transaction(data)
    Transation.create(
        external_trans_id: data['id'].to_i,
        user_id: data['user_id'].to_i,
        points: data['points'].to_i
      )
  end
end