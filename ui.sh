#!/bin/sh
osascript -e 'tell application "Microsoft Database Daemon" to quit'
osascript -e 'tell application "Microsoft AU Daemon" to quit'
osascript -e 'tell application "Office365Service" to quit'
sudo rm -R '/Applications/Microsoft Communicator.app/'
#sudo rm -R '/Applications/Microsoft Lync.app/'
sudo rm -R '/Applications/Microsoft Messenger.app/'
sudo rm -R '/Applications/Microsoft Office 2011/'
sudo rm -R '/Applications/Remote Desktop Connection.app/'
sudo rm -R '/Library/Application Support/Microsoft/'
sudo rm -R /Library/Automator/*Excel*
sudo rm -R /Library/Automator/*Office*
sudo rm -R /Library/Automator/*Outlook*
sudo rm -R /Library/Automator/*PowerPoint*
sudo rm -R /Library/Automator/*Word*
sudo rm -R /Library/Automator/*Workbook*
sudo rm -R '/Library/Automator/Get Parent Presentations of Slides.action'
sudo rm -R '/Library/Automator/Set Document Settings.action'
sudo rm -R /Library/Fonts/Microsoft/
sudo mv '/Library/Fonts Disabled/Arial Bold Italic.ttf' /Library/Fonts
sudo mv '/Library/Fonts Disabled/Arial Bold.ttf' /Library/Fonts
sudo mv '/Library/Fonts Disabled/Arial Italic.ttf' /Library/Fonts
sudo mv '/Library/Fonts Disabled/Arial.ttf' /Library/Fonts
sudo mv '/Library/Fonts Disabled/Brush Script.ttf' /Library/Fonts
sudo mv '/Library/Fonts Disabled/Times New Roman Bold Italic.ttf' /Library/Fonts
sudo mv '/Library/Fonts Disabled/Times New Roman Bold.ttf' /Library/Fonts
sudo mv '/Library/Fonts Disabled/Times New Roman Italic.ttf' /Library/Fonts
sudo mv '/Library/Fonts Disabled/Times New Roman.ttf' /Library/Fonts
sudo mv '/Library/Fonts Disabled/Verdana Bold Italic.ttf' /Library/Fonts
sudo mv '/Library/Fonts Disabled/Verdana Bold.ttf' /Library/Fonts
sudo mv '/Library/Fonts Disabled/Verdana Italic.ttf' /Library/Fonts
sudo mv '/Library/Fonts Disabled/Verdana.ttf' /Library/Fonts
sudo mv '/Library/Fonts Disabled/Wingdings 2.ttf' /Library/Fonts
sudo mv '/Library/Fonts Disabled/Wingdings 3.ttf' /Library/Fonts
sudo mv '/Library/Fonts Disabled/Wingdings.ttf' /Library/Fonts
sudo rm -R /Library/Internet\ Plug-Ins/SharePoint*
sudo rm -R /Library/LaunchDaemons/com.microsoft.*
sudo rm -R /Library/Preferences/com.microsoft.*
sudo rm -R /Library/PrivilegedHelperTools/com.microsoft.*
OFFICERECEIPTS=$(pkgutil --pkgs=com.microsoft.office.*)
for ARECEIPT in $OFFICERECEIPTS
do
    sudo pkgutil --forget $ARECEIPT
done
exit 0
