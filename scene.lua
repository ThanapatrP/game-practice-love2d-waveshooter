scene = {}

scene.obj = {}
scene.particle = {}

function scene:new(obj)
	obj = obj or {}

	setmetatable(obj, {__index = self})

	return obj
end

function scene:load()

end

function scene:update(dt)
	for i, v in ipairs(self.obj) do
		v:update(dt)
	end
end

function scene:draw()
	love.graphics.clear()
	for i, v in ipairs(self.obj) do
		v:draw()
	end
end
