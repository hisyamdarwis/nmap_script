-- nmap script to check open port on local wifi
-- usage: nmap -p --script=localOPport 

local nmap = require "nmap"
local localOPport = {}

-- state the arguments for scripting
local args = {
	localOPport = nmap.new_table(),
}

-- state the function of the script
local function port_state( host, port, state )
	if state.state == "open" then
	table.insert(localOPort, port.number)
	end
		end

function ip_status( host, status )
  if status.state == "up" then
    -- Scan TCP ports 1-65535
    local tcp_ports = nmap.open_port_list("1-65535")
    nmap.scan_ports(host, tcp_ports)
    -- Output open ports
    if #open_ports > 0 then
      print("Open ports on " .. host.ip .. ":")
      for _, port in ipairs(localOPort) do
        print("\t" .. port)
      end
    else
      print("No open ports found on " .. host.ip)
    end
  end
end

-- Register the callback functions
portrule = { port_state }
hostrule = { ip_status }
