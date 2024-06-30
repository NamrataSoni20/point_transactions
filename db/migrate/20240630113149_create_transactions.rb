class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.integer :external_trans_id
      t.integer :user_id
      t.integer :points

      t.timestamps
    end
  end
end
