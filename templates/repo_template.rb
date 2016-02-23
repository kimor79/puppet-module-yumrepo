
[<%= @name %>]
<% if @async && @async != '' -%>
async=<%= @async %>
<% end -%>
<% if @bandwidth && @bandwidth != '' -%>
bandwidth=<%= @bandwidth %>
<% end -%>
<% if @baseurl && @baseurl != '' -%>
baseurl=<%= @baseurl %>
<% end -%>
<% if @cost && @cost != '' -%>
cost=<%= @cost %>
<% end -%>
<% if @deltarpm_metadata_percentage && @deltarpm_metadata_percentage != '' -%>
cost=<%= @deltarpm_metadata_percentage %>
<% end -%>
<% if @deltarpm_percentage && @deltarpm_percentage != '' -%>
cost=<%= @deltarpm_percentage %>
<% end -%>
<% if @descr&& @descr != ''  -%>
name=<%= @descr %>
<% end -%>
<% if @enabled && @enabled != '' -%>
enabled=<%= @enabled %>
<% end -%>
<% if @enablegroups && @enablegroups != '' -%>
enablegroups=<%= @enablegroups %>
<% end -%>
<% if @exclude && @exclude != '' -%>
exclude=<%= @exclude %>
<% end -%>
<% if @failovermethod && @failovermethod != '' -%>
failovermethod=<%= @failovermethod %>
<% end -%>
<% if @gpgcakey && @gpgcakey != '' -%>
gpgcakey=<%= @gpgcakey %>
<% end -%>
<% if @gpgcheck && @gpgcheck != '' -%>
gpgcheck=<%= @gpgcheck %>
<% end -%>
<% if @gpgkey && @gpgkey != '' -%>
gpgkey=<%= @gpgkey %>
<% end -%>
<% if @http_caching && @http_caching != '' -%>
http_caching=<%= @http_caching %>
<% end -%>
<% if @include && @include != '' -%>
include=<%= @include %>
<% end -%>
<% if @includepkgs && @includepkgs != '' -%>
includepkgs=<%= @includepkgs %>
<% end -%>
<% if @ip_resolve && @ip_resolve != '' -%>
ip_resolve=<%= @ip_resolve %>
<% end -%>
<% if @keepalive && @keepalive != '' -%>
keepalive=<%= @keepalive %>
<% end -%>
<% if @keepcache && @keepcache != '' -%>
keepcache=<%= @keepcache %>
<% end -%>
<% if @key_id && @key_id != '' -%>
key_id=<%= @key_id %>
<% end -%>
<% if @metadata_expire && @metadata_expire != '' -%>
metadata_expire=<%= @metadata_expire %>
<% end -%>
<% if @metadata_expire_filter && @metadata_expire_filter != '' -%>
metadata_expire_filter=<%= @metadata_expire_filter %>
<% end -%>
<% if @metalink && @metalink != '' -%>
metalink=<%= @metalink %>
<% end -%>
<% if @mirrorlist && @mirrorlist != '' -%>
mirrorlist=<%= @mirrorlist %>
<% end -%>
<% if @mirrorlist_expire && @mirrorlist_expire != '' -%>
mirrorlist_expire=<%= @mirrorlist_expire %>
<% end -%>
<% if @password && @password != '' -%>
password=<%= @password %>
<% end -%>
<% if @priority && @priority != '' -%>
priority=<%= @priority %>
<% end -%>
<% if @protect && @protect != '' -%>
protect=<%= @protect %>
<% end -%>
<% if @provider && @provider != '' -%>
provider=<%= @provider %>
<% end -%>
<% if @proxy && @proxy != '' -%>
proxy=<%= @proxy %>
<% end -%>
<% if @proxy_password && @proxy_password != '' -%>
proxy_password=<%= @proxy_password %>
<% end -%>
<% if @proxy_username && @proxy_username != '' -%>
proxy_username=<%= @proxy_username %>
<% end -%>
<% if @repo_gpgcheck && @repo_gpgcheck != '' -%>
repo_gpgcheck=<%= @repo_gpgcheck %>
<% end -%>
<% if @retries && @retries != '' -%>
retries=<%= @retries %>
<% end -%>
<% if @secret_key && @secret_key != '' -%>
secret_key=<%= @secret_key %>
<% end -%>
<% if @s3_enabled && @s3_enabled != '' -%>
s3_enabled=<%= @s3_enabled %>
<% end -%>
<% if @skip_if_unavailable && @skip_if_unavailable != '' -%>
skip_if_unavailable=<%= @skip_if_unavailable %>
<% end -%>
<% if @ssl_check_cert_permissions && @ssl_check_cert_permissions != '' -%>
ssl_check_cert_permissions=<%= @ssl_check_cert_permissions %>
<% end -%>
<% if @sslcacert && @sslcacert != '' -%>
sslcacert=<%= @sslcacert %>
<% end -%>
<% if @sslclientcert && @sslclientcert != '' -%>
sslclientcert=<%= @sslclientcert %>
<% end -%>
<% if @sslclientkey && @sslclientkey != '' -%>
sslclientkey=<%= @sslclientkey %>
<% end -%>
<% if @sslverify && @sslverify != '' -%>
sslverify=<%= @sslverify %>
<% end -%>
<% if @target && @target != '' -%>
target=<%= @target %>
<% end -%>
<% if @throttle && @throttle != '' -%>
throttle=<%= @throttle %>
<% end -%>
<% if @timeout && @timeout != '' -%>
timeout=<%= @timeout %>
<% end -%>
<% if @ui_repoid_vars && @ui_repoid_vars != '' -%>
ui_repoid_vars=<%= @ui_repoid_vars %>
<% end -%>
<% if @username && @username != '' -%>
username=<%= @username %>
<% end -%>
