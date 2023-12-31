-- Copyright 2008 Yanira <forum-2008@email.de>
-- Licensed to the public under the Apache License 2.0.

require("nixio.fs")

local m
local s
local mode2g = os.execute("/usr/share/modeminfo/scripts/getmode.sh 2g")
local mode3g = os.execute("/usr/share/modeminfo/scripts/getmode.sh 3g")
local mode4g = os.execute("/usr/share/modeminfo/scripts/getmode.sh 4g")

m = Map("modemconfig", translate("Configure modem bands"),
	translate("Configuration 2G/3G/4G modem frequency bands."))

s = m:section(TypedSection, "modem", "<p>&nbsp;</p>" .. translate("Choose bands cellular modem"))
s.anonymous = true

-- disable broken
--[[ 
netmode = s:option(ListValue, "mode", translate("Net Mode"),
translate("Preffered Network mode select."))
if mode4g == 0 then
	netmode:value("4g", "4G only")
end
if mode4g == 0 and mode3g == 0 then
	netmode:value("p4g3g", "4G/3G: preffer 4G")
	netmode:value("4gp3g", "4G/3G: preffer 3G")
end
if mode2g == 0 and mode3g == 0 and mode4g == 0 then
	netmode:value("p4g3g2g", "4G/3G/2G: preffer 4G")
	netmode:value("4gp3g2g", "4G/3G/2G: preffer 3G")
	netmode:value("4g3gp2g", "4G/3G/2G: preffer 2G")
end
if mode3g == 0 then
	netmode:value("3g", "3G only")
end
if mode3g == 0 and mode2g == 0 then
	netmode:value("p3g2g", "3G/2G: preffer 3G")
	netmode:value("3gp2g", "3G/2G: preffer 2G")
end
if mode2g == 0 then
	netmode:value("2g", "2G only")
end
netmode.default = "p4g3g"
]]--

if mode2g == 0 then
	gsm = s:option(StaticList, "gsm_band", translate("2G"))
	gsm:value("8", "GSM900") 
	gsm:value("3", "GSM1800")
	gsm.rmempty = true
end

if mode3g == 0 then
	wcdma = s:option(StaticList, "3g_band", translate("3G"))
	wcdma:value("9", "WCDMA850")
	wcdma:value("8", "WCDMA900")
	wcdma:value("1", "WCDMA2100")
	s.rmempty = true
end

if mode4g == 0 then
	ltefdd = s:option(StaticList, "lte_band_fdd", translate("4G FDD"))
	ltefdd:value("1", "B1")
	ltefdd:value("3", "B3")
	ltefdd:value("5", "B5")
	ltefdd:value("7", "B7")
	ltefdd:value("8", "B8")
	ltefdd:value("20", "B20")
	s.rmempty = true

	ltetdd = s:option(StaticList, "lte_band_tdd", translate("4G TDD"),
	translate("Maybe must reconnect cellular interface. <br /> If deselect all bands, then used default band modem config."))
	ltetdd:value("38", "B38")
	ltetdd:value("40", "B40")
	ltetdd:value("41", "B41")
	s.rmempty = true
end

function m.on_after_commit(Map)
        luci.sys.call("/usr/bin/modemconfig")
end

return m
