# LastWakeLogger
## About
- This is a script that runs from __Windows Task Scheduler__ to detect when a PC is woken from sleep/hibernation and will log information on the device that woke it
## Setup
- Clone this repo
- Set up the scheduled task
    - Open __Windows Task Scheduler__ as admin
    - Right-click on __Task Scheduler Library__ on the left-hand sidebar
    - Click __Import Task...__
    - Navigate to the `Log Wakes.xml` file and select it
    - Navigate to the __Actions__ tab and edit the __Action__
    - Click __Browse...__
    - Navigate to the `LogWakes.bat` file and select it
    - Change other settings if desired and click __OK__
## Notes
- Test the script manually by right-clicking on it and selecting __Run__
- The log file name and directory are specified in the script