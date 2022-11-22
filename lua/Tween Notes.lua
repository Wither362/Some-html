

--Original code by ErenKaya, edited by Wither362 (A LOT) to apply better input--
--I know this looks messy, but try to do it yourself, it's fucking difficult

--DONT MESS WITH THIS--
local value = 50
local downValue = 570
local upValue

local timerTxtUp
local timerTxtDown
local timerTxtValue
local timeBarBgUp
local timeBarBgDown
local timeBarBgValue
local timeBarUp
local timeBarDown
local timeBarValue
local healthBarUp
local healthBarDown
local healthBarValue
local healthBarBgUp
local healthBarBgDown
local healthBarBgValue
local botplayUp
local botplayDown
local botplayValue
local bah

local time = 0.5
local canDo = true
local aDirection = 90
local toggleed
local width = 108



--Mess with this--
local type = 'linear'


function reloadDownValues()
    value = downValue
    timerTxtValue = timerTxtDown
    timeBarBgValue = timeBarBgDown
    timeBarValue = timeBarDown
    healthBarValue = healthBarDown
    healthBarBgValue = healthBarBgDown
    botplayValue = botplayDown
end
function reloadUpValues()
    value = upValue
    timerTxtValue = timerTxtUp
    timeBarBgValue = timeBarBgUp
    timeBarValue = timeBarUp
    healthBarValue = healthBarUp
    healthBarBgValue = healthBarBgUp
    botplayValue = botplayUp
end
function reloadValues()
    if toggleed then
        reloadDownValues()
    else
        reloadUpValues()
    end
end
function onCountdownStarted()
    --debugPrint(getPropertyFromGroup('strumLineNotes', 2, 'direction'))
    upValue = screenHeight - 150
    downValue = screenHeight - 670

    timerTxtUp = upValue + width
    timerTxtDown = 22
    timeBarBgUp = timerTxtUp + (getProperty('timeTxt.height') / 4)
    timeBarBgDown = timerTxtDown + (getProperty('timeTxt.height') / 4)
    timeBarUp = timeBarBgUp + 4
    timeBarDown = timeBarBgDown + 4

    healthBarUp = 83.2
    healthBarDown = 644.8
    healthBarBgUp = 79.2
    healthBarBgDown = 640.8
    botplayUp = 606
    botplayDown = 82

    toggleed = not downscroll

    if downscroll then
        reloadDownValues()
    else
        reloadUpValues()
    end

    canDo = true
    bah = false
end

function twweeeeeeen(thing, otherthing, halue)
    doTweenY(thing, otherthing, halue, time, type)
end
function tweenss()
    if not canDo then --DONT TOUCH IT
        return
    end
    bah = not bah
    for i = 0, 7 do
        --setPropertyFromGroup('strumLineNotes', i, 'downScroll', toggleed)
        setPropertyFromGroup('strumLineNotes', i, 'direction', - aDirection)
    end
    aDirection = - aDirection

    noteTweenY('gotoup', 0, value, time, type)
    noteTweenY('gotoup2', 1, value, time, type)
    noteTweenY('gotoup3', 2, value, time, type)
    noteTweenY('gotoup4',  3, value, time, type)

    noteTweenY('gotoupBF', 4, value, time, type)
    noteTweenY('gotoupBF2', 5, value, time, type)
    noteTweenY('gotoupBF3', 6, value, time, type)
    noteTweenY('gotoupBF4', 7, value, time, type)


    twweeeeeeen('timerTxtTweeeeeen', 'timeTxt', timerTxtValue)
    twweeeeeeen('timeeebaaarrbg', 'timeBarBG', timeBarBgValue)
    twweeeeeeen('tieiie', 'timeBar', timeBarValue)
    twweeeeeeen('healthbaaaar', 'healthBar', healthBarValue)
    twweeeeeeen('healthbarbggggbsd', 'healthBarBG', healthBarBgValue)
    twweeeeeeen('iccoona1', 'iconP1', healthBarValue - 75)
    twweeeeeeen('iccoona2', 'iconP2', healthBarValue - 75)
    twweeeeeeen('scocretxt', 'scoreTxt', healthBarBgValue + 36)
    twweeeeeeen('bobotpa', 'botplayTxt', botplayValue)

    runTimer('broJustWait', time + 0.05)
    canDo = false

    reloadValues()

    for i = 0, getProperty('unspawnNotes.length') - 1 do
        setPropertyFromGroup('unspawnNotes', i, 'flipX', bah)
        setPropertyFromGroup('unspawnNotes', i, 'flipY', bah)
    end
    for i = 0, getProperty('notes.length') - 1 do
        setPropertyFromGroup('notes', i, 'flipX', bah)
        setPropertyFromGroup('notes', i, 'flipY', bah)
    end

    toggleed = not toggleed
end

function onEvent(name, value1, value2)
    if name == 'Tween Notes' then
        if value1 ~= "" then
            time = tonumber(value1)
        end
        tweenss()
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'broJustWait' then
        canDo = true
    end
end