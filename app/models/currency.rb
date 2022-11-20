class Currency < ApplicationRecord
    def current_price
        url = "https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=5e64baba-b2d7-4d11-9aa2-54f25f955b6a"
        request = HTTParty.get(url + self.slug)
        response = JSON.parse(request.body)
    end
end
