class CreateCoins < ActiveRecord::Migration[7.2]
  def change
    create_table :coins do |t|
      t.string :uuid
      t.string :symbol
      t.string :name
      t.decimal :price
      t.decimal :market_cap
      t.decimal :volume_24h
      t.decimal :change_24h

      t.timestamps
    end
  end
end
