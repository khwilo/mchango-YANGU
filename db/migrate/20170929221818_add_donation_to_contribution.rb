class AddDonationToContribution < ActiveRecord::Migration[5.1]
  def change
    add_column :contributions, :donation, :integer
  end
end
