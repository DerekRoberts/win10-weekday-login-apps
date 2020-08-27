# Weekday Login Apps for Win10

VBScript to run apps conditional on weekday.  Intended for use with Windows 10 Task Scheduler.

Steps:

- Edit weekdayLoginApps.vbs to your liking.  There are sections for weekdays and all days.
- Copy weekdayLoginApps.vbs somewhere appropriate.
  - E.g. cmd: `copy weekdayLoginApps.vbs %LOCALAPPDATA%`
- Open Task Scheduler and import scheduledTask.xml
- Make sure to customize the task
  - Triggers: Any (default) or specific user
  - Actions > Edit > Arguments: E.g. `//nologo "%LOCALAPPDATA%\weekdayLoginApps.vbs"`
- Verify by running the task (Right pane of Task Scheduler)

Coming Soon:

- Batch script to copy files and possible ask for customization
- Further documentation

Links:

- 
