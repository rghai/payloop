class AddPayloopscoreToUsers < ActiveRecord::Migration
  def change
    add_column :users, :payloopscore, :integer
  end
end
