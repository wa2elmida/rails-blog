# config/initializers/pusher.rb
   require 'pusher'

   Pusher.app_id = '1319569'
   Pusher.key = '98e192303f611ac641c3'
   Pusher.secret = '49354eab9ff533fdcb9a'
   Pusher.cluster = 'eu'
   Pusher.logger = Rails.logger
   Pusher.encrypted = true

   development:
     cloud_name: "wa2elmida"
     api_key: "179835266379513"
     api_secret: "rl1L9csQzNJUcKOXxZj9a_rd0jk"
     secure: true

   production:
     cloud_name: "wa2elmida"
     api_key: "179835266379513"
     api_secret: "rl1L9csQzNJUcKOXxZj9a_rd0jk"
     secure: true
