json.extract! order, :id, :user, :dateOrdered, :price, :categoryid, :created_at, :updated_at
json.url order_url(order, format: :json)
