

--Watermark Script by MasterDirector99
currentDifficulty = 'its still fucked';

function onCreate()
    makeLuaText('songText', songName .. ' - ' .. currentDifficulty .. " - DEMO", 0, 2, 701);
    setTextAlignment('songText', 'left');
    setTextSize('songText', 15);
    setTextBorder('songText', 1, '000000');
    addLuaText('songText');
end

function onCreatePost()
    setProperty('timeBar.alpha', 0);
    setProperty('timeTxt.alpha', 0);
end

function onUpdate(elapsed)
    if ratingName == 'Sick!' then
        setRatingName('Marvelous!')
    end
    if ratingName == 'Bad' then
        setRatingName('Bad...')
    end
    setTextFont('scoreTxt', 'KirbysAdventure.ttf')
    setTextFont('songText', 'KirbysAdventure.ttf')
    setTextFont('botplayTxt', 'KirbysAdventure.ttf')
    currentDifficulty = getProperty('storyDifficultyText');
    --setTextString('songText', songName .. ' ' .. currentDifficulty .. " - PE bobbob - FNF");
    if not lowQuality then
        setTextString('songText', songName .. ' ' .. currentDifficulty .. " - DEMO");
    end
    if lowQuality then
        setTextString('songText', songName .. ' ' .. currentDifficulty .. " - Low Quality - DEMO");
    end
    setProperty('timeBar.alpha', 0);
    setProperty('timeTxt.alpha', 0);
end