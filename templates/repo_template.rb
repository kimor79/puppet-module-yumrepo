[<%= @name %>]
<% if @bandwidth && @bandwidth != '' -%>
bandwidth=<%= @bandwidth %>
<% end -%>
<% if @baseurl && @baseurl != '' -%>
baseurl=<%= @baseurl %>
<% end -%>
<% if @cost && @cost != '' -%>
cost=<%= @cost %>
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
<% if @keepalive && @keepalive != '' -%>
keepalive=<%= @keepalive %>
<% end -%>
<% if @key_id && @key_id != '' -%>
key_id=<%= @key_id %>
<% end -%>
<% if @metadata_expire && @metadata_expire != '' -%>
metadata_expire=<%= @metadata_expire %>
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
