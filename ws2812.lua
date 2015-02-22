gpio.ws2812(string.char(0))
gpio.ws2812(string.char(0, 0, 0):rep(300))

s=net.createServer(net.UDP) 
s:on("receive",function(s,c) gpio.ws2812(c) end)
s:listen(1337)
