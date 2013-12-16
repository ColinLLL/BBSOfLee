json.array!(@signins) do |signin|
  json.extract! signin, :id, :email, :password
  json.url signin_url(signin, format: :json)
end
