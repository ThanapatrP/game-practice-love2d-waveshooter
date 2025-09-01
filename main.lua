
function love.load()
	require("scene")
	mainScene = scene:new()

	currscene = mainScene

	testBall = {}
	testBall.x = 400
	testBall.y = 300
	testBall.dt = 0.0
	function testBall:update(dt)
		self.x = 400 * cos(self.dt * 0.5) * 50
		self.dt = self.dt + dt
	end

	function testBall:draw()
		love.graphics.circle("fill", self.x, self.y, 16, 8)
	end

	table.insert(mainScene.obj, 0, testBall)
end

function love.update(dt)
	currscene:update(dt)
end

function love.draw()
	currscene:draw()
end