json.array!(@interventions) do |intervention|
  json.extract! intervention, :id, :user_id, :intervention-status_id, :vip_id, :is_complete
  json.url intervention_url(intervention, format: :json)
end
