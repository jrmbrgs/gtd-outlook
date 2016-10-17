set myEmail to ""
tell application "Microsoft Outlook"
    activate
    display dialog "What ?" default answer ""
    set todoItem to text returned of result
    set todoSubject to "XXX : " & todoItem
    set newMessage to make new outgoing message with properties {subject:todoSubject}
    make new recipient at newMessage with properties {email address:{address:myEmail}}
    send newMessage
end tell

