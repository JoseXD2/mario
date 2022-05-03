losing = false
function onCreate()
	if not lowQuality then
		if dadName == 'MarioFnf' then
			makeAnimatedLuaSprite('animatedicon2', 'icons/icon-wmario', getProperty('iconP2.x'), getProperty('iconP2.y'))
			addAnimationByPrefix('animatedicon2', 'normal', 'mario normal', 24, true)
			addAnimationByPrefix('animatedicon2', 'losing', 'mario losing', 24, true)
			--addAnimationByPrefix('animatedicon2', 'winning', 'mario winning', 24, true)
			setScrollFactor('animatedicon2', 0, 0)
			setObjectCamera('animatedicon2', 'other') -- either is under the health bar or nothing
			addLuaSprite('animatedicon2', true)
			objectPlayAnimation('animatedicon2', 'normal', false)
		end
	end
end

function onUpdate(elapsed)
	if not lowQuality then
		if dadName == 'MarioFnf' then
			setProperty('iconP2.alpha', 0)
			if getProperty('health') > 1.6 then
				objectPlayAnimation('animatedicon2', 'losing', false)
				losing = true
			elseif getProperty('health') < 0.4 then
				objectPlayAnimation('animatedicon2', 'winning', false)
				losing = false
			else
				objectPlayAnimation('animatedicon2', 'normal', false)
				losing = false
			end
		end
	end
	if not lowQuality then
		setProperty('camOther.zoom', getProperty('camHUD.zoom'))
		setProperty('animatedicon2.x', getProperty('iconP2.x') + 0)
		setProperty('animatedicon2.angle', getProperty('iconP2.angle') + 0)
		setProperty('animatedicon2.y', getProperty('iconP2.y') - 15)
		--setProperty('animatedicon2.scale.x', getProperty('iconP2.scale.x') + 0.05)
		setProperty('animatedicon2.scale.y', getProperty('iconP2.scale.y') + 0.05)
	end
end