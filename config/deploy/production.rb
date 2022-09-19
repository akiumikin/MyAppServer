server "34.135.142.37", user: "akiumikin", roles: %w{app db web}

# set :whenever_roles, :batch
# set :whenever_environment, :production

set :branch, 'main'
set :ssh_options, {
  keys: %w(~/.ssh/id_rsa),
  forward_agent: false,
  auth_methods: %w(publickey)
}