abletonlive12lite)
    name="Ableton Live 12 Lite"
    type="dmg"
    appNewVersion=$(curl -fs "https://www.ableton.com/en/release-notes/live-12/" | grep -A 1 "class=\"release-notes\" id=\"live-" | sed 's/.*-\([0-9\.][0-9\.]*\).*/\1/' | grep -o "[0-9.].[0-9.].[0-9.].[0-9.]*" | head -1 | xargs)
    appCustomVersion(){ defaults read "/Applications/${name}.app/Contents/Info.plist" CFBundleVersion | cut -d" " -f1 | xargs }
    downloadURL="https://cdn-downloads.ableton.com/channels/${appNewVersion}/ableton_live_lite_${appNewVersion}_universal.dmg"
    blockingProcesses=("Live")
    expectedTeamID="MWR434WD94"
    ;;
