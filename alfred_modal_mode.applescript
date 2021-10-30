#!/usr/bin/osascript


on run argv

	set the_trigger to item 1 of argv
	set the_workflow to item 2 of argv
	set the_argument to ""

	tell application id "com.runningwithcrayons.Alfred" to run trigger the_trigger in workflow the_workflow with argument the_argument 
	tell application "System Events"
		tell application process "Alfred"
			-- Wait for Alfred window to appear
			repeat while (count windows) = 0
				delay 0.1
			end repeat
			log "Alfred open"
			
			-- Wait for Alfred window to disappear
			repeat while (count windows) > 0
				delay 0.1
			end repeat
			-- Exit "Alfred mode" here
			log "Alfred closed"
		end tell
	end tell
end run


