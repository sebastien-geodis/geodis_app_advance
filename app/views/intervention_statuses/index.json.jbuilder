json.array!(@intervention_statuses) do |intervention_status|
  json.extract! intervention_status, :id, :name
  json.url intervention_status_url(intervention_status, format: :json)
end
