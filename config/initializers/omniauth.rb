OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '171814955109-88ncddb6iei70nvcitnl7815rqeeucgl.apps.googleusercontent.com', 'TuZbe0aQF8hi9-qftPFHXvuL', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end