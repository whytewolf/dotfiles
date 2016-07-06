# requires fish get https://github.com/fisherman/get

function openrc
  set -g -x OS_AUTH_URL http://keystone.wolfcloud.bad4.us:5000/v3
  get --prompt="Openstack Domain:" | read OS_USER_DOMAIN_NAME_INPUT
  get --prompt="Openstack Username:" | read OS_USERNAME_INPUT
  get --prompt="OpenStack Password:" --silent | read OS_PASSWORD_INPUT
  get --prompt="OpenStack Project:" | read OS_PROJECT_NAME_INPUT
  set -g -x OS_USER_DOMAIN_NAME $OS_USER_DOMAIN_NAME_INPUT
  set -g -x OS_USERNAME $OS_USERNAME_INPUT
  set -g -x OS_PASSWORD $OS_PASSWORD_INPUT
  set -g -x OS_PROJECT_NAME $OS_PROJECT_NAME_INPUT
  set -g -x OS_TENANT_NAME $OS_PROJECT_NAME
  set -g -x OS_PROJECT_DOMAIN_NAME "Default"
  set -g -x OS_REGION_NAME "WolfCloud"
  set -g -x OS_IDENTITY_API_VERSION 3
end
