json.array!(@swanblogs) do |swanblog|
  json.extract! swanblog, :id, :title, :contest, :text, :date
  json.url swanblog_url(swanblog, format: :json)
end
