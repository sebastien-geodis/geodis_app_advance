json.array!(@vips) do |vip|
  json.extract! vip, :id, :nom, :prenom, :localisation, :fonction, :service, :email, :tel_fixe, :tel_portable, :assistante, :identifiants, :materiel, :domaine, :divers, :photo
  json.url vip_url(vip, format: :json)
end
