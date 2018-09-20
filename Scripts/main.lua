main = {}
local this = main
Event = require 'events'

local TestEvent = "TestEvent"

function main.Start()
	
	print("main Start...")
		
	Event.AddListener(TestEvent, this.TestHandler)
	Event.Brocast(TestEvent, 'Fire')
end

function main.TestHandler(value)
	print("TestHandler..." .. value)
end

main.Start()