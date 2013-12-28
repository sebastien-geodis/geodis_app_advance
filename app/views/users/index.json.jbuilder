json.array!(@users) do |user|
  json.extract! user, :id, :nom, :prenom, :intervention_status_id, :vip_id, :is_admin
  json.url user_url(user, format: :json)
end
