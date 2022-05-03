losing = false
function onCreate()
	if not lowQuality then
		makeAnimatedLuaSprite('animatedicon', 'icons/icon-wbf', getProperty('iconP1.x'), getProperty('iconP1.y'))
		addAnimationByPrefix('animatedicon', 'normal', 'bf normal', 24, true)
		addAnimationByPrefix('animatedicon', 'losing', 'bf losing', 24, true)
		--addAnimationByPrefix('animatedicon', 'winning', 'bf winning', 24, true)
		setScrollFactor('animatedicon', 0, 0)
		setObjectCamera('animatedicon', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedicon', true)
		objectPlayAnimation('animatedicon', 'normal', false)
	end
end

function onUpdate(elapsed)
	if not lowQuality then
		setProperty('iconP1.alpha', 0)
		if getProperty('health') < 0.6 then
			objectPlayAnimation('animatedicon', 'losing', false)
			losing = true
		elseif getProperty('health') > 1.6 then
			objectPlayAnimation('animatedicon', 'winning', false)
			losing = false
		else
			objectPlayAnimation('animatedicon', 'normal', false)
			losing = false
		end
		setProperty('camOther.zoom', getProperty('camHUD.zoom'))
		setProperty('animatedicon.x', getProperty('iconP1.x') + 0)
		setProperty('animatedicon.angle', getProperty('iconP1.angle') + 0)
		setProperty('animatedicon.y', getProperty('iconP1.y') + 0)
		--setProperty('animatedicon.scale.x', getProperty('iconP1.scale.x') - 0.1)
		setProperty('animatedicon.scale.y', getProperty('iconP1.scale.y') - 0.1)
	end
end