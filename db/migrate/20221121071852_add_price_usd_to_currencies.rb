class AddPriceUsdToCurrencies < ActiveRecord::Migration[7.0]
  def change
    add_column :currencies, :priceUsd, :string
  end
end
