json.array!(@monitorings) do |monitoring|
  json.extract! monitoring, :id, :oscar_ticket_id, :user_id, :comment, :date_ouverture, :date_estimation_cloture, :date_cloture, :vip_id, :monitoring_status_id
  json.url monitoring_url(monitoring, format: :json)
end
