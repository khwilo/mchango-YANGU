class AddSenderToContribution < ActiveRecord::Migration[5.1]
  def change
    add_column :contributions, :sender, :string
  end
end
