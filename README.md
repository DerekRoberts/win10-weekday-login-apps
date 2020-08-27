# Weekday Login Apps for Win10

VBScript to run apps conditional on weekday.  Intended for use with Windows 10 Task Scheduler.

## Steps

- Customize weekdayLoginApps.vbs
  - Sections: weekdays, weekends and any day
  - Uncomment (`'`) as necessary
  - Optional: WScript.Quit() reports final app status
- Copy weekdayLoginApps.vbs somewhere appropriate
  - E.g. cmd: `copy weekdayLoginApps.vbs %LOCALAPPDATA%`
- Open Task Scheduler and import scheduledTask.xml
- Customize
  - Triggers: Any (default) or specific user
  - Actions > Edit > Arguments: E.g. `//nologo "%LOCALAPPDATA%\weekdayLoginApps.vbs"`
- Verify
 - Run (in right pane of Task Scheduler)

## Troubleshooting

VBScript can be confusing.  If `"` fails try `"""`, a quoted quote.

Run the script manually from cmd.exe.  Look for specific line numbers in the output.

`cscript.exe weekdayLoginApps.vbs`

## Reference

### VBScript

[WScript.Shell](https://ss64.com/vb/shell.html)

[WScript.Quit](https://ss64.com/vb/quit.html)

[Shell.Run](https://ss64.com/vb/run.html)

[Weekday/vbMonday](https://ss64.com/vb/weekday.html)

### Windows

[Windows Environment Variables](https://www.rapidee.com/en/environment-variables)

## Upcoming / Call for Contribution

- Batch script:
  - Copy VB script somewhere appropriate
  - Import scheduled task
  - Customization questions
  - Add VB script launch to Start Menu
- Further documentation
- T.B.D.!
