local allowCountdown = false;

function onStartCountdown()
    if not allowCountdown and isStoryMode and not seenCutscene then
        startVideo("You Can't Run Cutscene");
        allowCountdown = true;
        return Function_Stop;
    end
    return Function_Continue;
end

