# gtd-outlook

The goal is to always have an inbox displaying only emails requiring your action or attention.
Which allow you to easily keep an eye on postpone past mail just like fresh incomming mail.

## Principle
All your incomming mails are tagged w/ a Outlook category, e.g. _0mail_
You have to create a _virtual folder_ filtering emails which are tagged _0mail_ and not tagged _0processed_.
We use a explicit tag _0processed_ instead of the standard _read status_ because a read email does not mean it's processed.

## Setup the _Processed Service_
* Create an _automator service_ taking _no input_ and related to the _Outlook App_
* Make the _service_ to run the apple script
```Applescript
on run {input, parameters}
	do shell script "/usr/bin/osascript ~/code/gtd-outlook/outlookAddTagToSelection.scpt"
end run
```
* Add a _service schortcut_ to make the use more efficient
Sys. Pref. > Keyboard > Shortcut > select _services_ in the left panel > assign a shortcut e.g. alt+r

Then in Outlook, you just have to select emails and tags 'em to clean your _virtual folder_
