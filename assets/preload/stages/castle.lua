function onCreate()
	-- background shit
	if not lowQuality then
		makeLuaSprite('sky', 'castle/SKY', -550, -500);
		setScrollFactor('sky', 0.9, 0.9);
		scaleObject('sky', 1, 1);

		makeLuaSprite('ground', 'castle/Ground', -700, 400);
		setScrollFactor('ground', 0.9, 0.9);
		scaleObject('ground', 0.9, 0.9);

		makeLuaSprite('block', 'castle/question_block', 1300, 150);
		setScrollFactor('block', 0.9, 0.9);
		scaleObject('block', 0.9, 0.9);

		makeAnimatedLuaSprite('toads','castle/toad_crowd',-550, 500)
		addAnimationByPrefix('toads','crowd','TOAD crowd',24,true)
		setScrollFactor('toads', 0.75, 0.75);
		scaleObject('toads', 1.1, 1.1);
		
		makeAnimatedLuaSprite('hills','castle/hills',-650, -80)
		addAnimationByPrefix('hills','bop','Hills',24,true)
		setScrollFactor('hills', 0.85, 0.85);
		scaleObject('hills', 0.9, 0.9);

		makeAnimatedLuaSprite('castle','castle/castle',-650, -230)
		addAnimationByPrefix('castle','castlebop','castle on hill',24,true)
		setScrollFactor('castle', 0.85, 0.85);
		scaleObject('castle', 0.9, 0.9);
	end

	if lowQuality then
		makeLuaSprite('sky', 'castlelowquality/SKY', -550, -500);
		setScrollFactor('sky', 0.9, 0.9);
		scaleObject('sky', 1, 1);

		makeLuaSprite('ground', 'castlelowquality/Ground', -700, 400);
		setScrollFactor('ground', 0.9, 0.9);
		scaleObject('ground', 0.9, 0.9);

		makeLuaSprite('block', 'castlelowquality/question_block', 1300, 150);
		setScrollFactor('block', 0.9, 0.9);
		scaleObject('block', 0.9, 0.9);

		makeAnimatedLuaSprite('toads','castlelowquality/toad_crowd',-550, 500)
		addAnimationByPrefix('toads','crowd','TOAD crowd',24,true)
		setScrollFactor('toads', 0.75, 0.75);
		scaleObject('toads', 1.1, 1.1);
		
		makeAnimatedLuaSprite('hills','castlelowquality/hills',-650, -80)
		addAnimationByPrefix('hills','bop','Hills',24,true)
		setScrollFactor('hills', 0.85, 0.85);
		scaleObject('hills', 0.9, 0.9);

		makeAnimatedLuaSprite('castle','castlelowquality/castle',-650, -230)
		addAnimationByPrefix('castle','castlebop','castle on hill',24,true)
		setScrollFactor('castle', 0.85, 0.85);
		scaleObject('castle', 0.9, 0.9);
	end
	addLuaSprite('sky', false);
	addLuaSprite('hills', false);
	addLuaSprite('castle', false);
	addLuaSprite('ground', false);
	addLuaSprite('block', false);
	addLuaSprite('toads', true);
end

function onUpdate()
	currentBeat = (getSongPosition()/250)*(bpm/120)
	doTweenY(GFTweenY, 'gf', 20 -30 * math.sin((currentBeat * 0.10) * math.pi), 0.001)
end

function onBeatHit()
	objectPlayAnimation('toads','crowd',false)
	objectPlayAnimation('hills','bop',false)
	objectPlayAnimation('castle','castlebop',false)
end