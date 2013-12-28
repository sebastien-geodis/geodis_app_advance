json.array!(@monitoring_statuses) do |monitoring_status|
  json.extract! monitoring_status, :id, :name
  json.url monitoring_status_url(monitoring_status, format: :json)
end
