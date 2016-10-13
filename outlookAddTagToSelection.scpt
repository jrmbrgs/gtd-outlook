set tag to "0READ"
tell application "Microsoft Outlook"
    activate
    set messageList to current messages
    if messageList = {} then
        error "No Messages selected. Select at least one message."
        error -128
    end if
    repeat with msg in messageList
        set msg's is read to true
        set messageCategoryLits to categories of msg
        set end of messageCategoryLits to category tag
        set category of msg to messageCategoryLits
    end repeat
end tell
