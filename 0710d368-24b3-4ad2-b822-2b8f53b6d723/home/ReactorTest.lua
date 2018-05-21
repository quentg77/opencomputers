-- package

local component = require("component")

local term = require("term")

-- variable local

local br = component.list("br_reactor")

-- fonction local

function EnergieNiveau(reactor)
	local pctEnergie = (reactor.getEnergyStored() * 100 / reactor.getEnergyCapacity())
	return pctEnergie
end

-- programme principal

while true do

	term.clear()

	for AdrReactor in pairs(br) do

		local reactor = component.proxy(AdrReactor)
		io.write(string.format("Adresse : %s \n", AdrReactor))
		io.write(string.format("Niveau d'energie : %.2f" , EnergieNiveau(reactor)),"%","\n")
		print()
	end

	os.sleep(1)
end