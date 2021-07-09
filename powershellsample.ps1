new-item d:\powershellsample -itemtype directory
new-item d:\powershellsample1 -itemtype directory
new-item d:\powershellsample\file1.txt
new-item d:\powershellsample\file2.txt
new-item d:\powershellsample\file3.txt
get-childitem d:\powershellsample | copy-item -destination 'd:\powershellsample1'
$curDateTime = Get-Date -Format yyyyMMdd
Get-ChildItem D:\powershellsample -Recurse |
Rename-Item -NewName {$_.Basename + '_' + $curDateTime + $_.Extension }