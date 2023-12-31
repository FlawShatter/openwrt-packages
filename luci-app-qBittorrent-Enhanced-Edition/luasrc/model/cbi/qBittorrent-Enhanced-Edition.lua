m = Map("qBittorrentEE", translate("qBittorrent-Enhanced-Edition"), translate("qBittorrent-Enhanced-Edition is a cross-platform free and open-source BitTorrent client.").."<br/>"..translate("Default login username: admin, password: adminadmin."))

m:section(SimpleSection).template="qBittorrent-Enhanced-Edition/qBittorrent-Enhanced-Edition_status"

s = m:section(TypedSection, "qBittorrentEE")
s.anonymous=true

enable = s:option(Flag, "enable", translate("Enable"))
enable.rmempty = false

profile_dir = s:option(Value,"profile_dir",translate("Profile Dir"),translate("Store configuration files in the Path"))
profile_dir.default = "/etc"
profile_dir.placeholder = "/etc"
profile_dir.rmempty = false

port = s:option(Value,"port",translate("Web Port"),translate("WEBUI listening port"))
port.default = "8080"
port.placeholder = "8080"
port.rmempty = false

return m
