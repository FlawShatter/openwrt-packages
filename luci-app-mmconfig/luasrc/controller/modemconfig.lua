local nixio = require "nixio"

module("luci.controller.modemconfig", package.seeall)

local utl = require "luci.util"

function index()
	entry({"admin", "modem"},  firstchild(), translate("Modem"), 45).dependent = false
	entry({"admin", "modem", "modemconfig"}, cbi("modem/modemconfig"), translate("Band config"), 9).leaf = true
end

