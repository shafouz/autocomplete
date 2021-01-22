class CreateBets < ActiveRecord::Migration[6.1]
  def change
    create_table :bets do |t|
      t.string :team1
      t.string :team2
      t.float :amount
      t.boolean :result

      t.timestamps
    end
  end
end
