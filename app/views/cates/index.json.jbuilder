json.array!(@cates) do |cate|
  json.extract! cate, :id, :cate_name, :post_id
  json.url cate_url(cate, format: :json)
end
