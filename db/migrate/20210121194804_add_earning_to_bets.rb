class AddEarningToBets < ActiveRecord::Migration[6.1]
  def change
    add_column :bets, :earnings, :float
  end
end
