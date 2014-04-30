h = 5
v = 4

function onLogin(cid)
	t = 0
	for i=1,100 do
		t = t + 50
		addEvent(sendEffect, t, cid)
	end 
	
	doPlayerSendTextMessage(cid, 17, "Welcome in Avesta.")
	
	return TRUE
end

function sendEffect(c)
	p = getPlayerPosition(c)
	p.x = p.x + math.random(-h, h)
	p.y = p.y + math.random(-v, v)
	doSendMagicEffect(p, math.random(0, 24))
end
