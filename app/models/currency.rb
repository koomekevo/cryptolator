class Currency < ApplicationRecord
    def current_price
        url = "https://api.coincap.io/v2/assets/"
        request = HTTParty.get(url + self.slug)
        response = JSON.parse(request.body)
    end
end
