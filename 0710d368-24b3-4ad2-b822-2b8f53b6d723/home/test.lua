local component = require("component")

local br = component.list("br_reactor")

for reactor in pairs(br) do
	io.write(string.format("Adresse : %s \n", reactor))
	print(string.format("Nom : %s", component.type(reactor)))
	print(component.proxy(reactor).getEnergyStored())
	-- io.write(string.format("Adresse : %i \n", reactor.getEnergyStored()))
end