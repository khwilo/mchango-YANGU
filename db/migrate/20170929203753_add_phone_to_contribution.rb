class AddPhoneToContribution < ActiveRecord::Migration[5.1]
  def change
    add_column :contributions, :phone, :string
  end
end
