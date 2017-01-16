require 'addressable/uri'
require 'rest-client'

# def index_users
#     url = Addressable::URI.new(
#       scheme: 'http',
#       host: 'localhost',
#       port: 3000,
#       path: '/users'
#       ).to_s
#
#     puts RestClient.get(url)
# end
#
# index_users
#
# def create_user(name, email)
#   url = Addressable::URI.new(
#     scheme: 'http',
#     host: 'localhost',
#     port: 3000,
#     path: '/users.json'
#   ).to_s
#
#   puts RestClient.post(
#     url,
#     { user: { name: name, email: email } }
#   )
# end
#
# create_user("Frank Gidzilla", "godzill@frank.com")

def update_user(name, email, id)
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: "/users/#{id}"
  ).to_s

  puts RestClient.patch(
    url,
    { user: { name: name, email: email } }
  )
end

update_user("Jill", "j@gm.com", 1)
