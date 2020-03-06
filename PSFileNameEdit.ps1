$Folder = Read-Host -Prompt 'Input the path of the folder with ONLY files you would like to rename'
$Head = Read-Host -Prompt 'Input what to append to the BEGINING of each file'
$Tail = Read-Host -Prompt 'Input what to apped to the END of each file'
$StartIndex = Read-Host -Prompt 'Input the index number of substring BEGINING (Input 0 if no substring desired)'
$EndIndex = Read-Host -Prompt 'Input the index number of substring ENDING (Input 0 if no substring desired)'


cd $Folder
If ($StartIndex -ge $EndIndex){
    dir |Rename-Item -NewName {$Head + $_.name.substring($StartIndex) + $Tail}
}Else{
    dir |Rename-Item -NewName {$Head + $_.name.substring($StartIndex,$EndIndex) + $Tail}
}




