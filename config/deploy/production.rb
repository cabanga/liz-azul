# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

server '79.98.30.68', user: 'deploy', roles: %w{app db web}