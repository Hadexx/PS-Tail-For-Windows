Function Get-FileName
{   
    [void][System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms")
    $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
    $OpenFileDialog.filter = "File (*.*)| *.*" 
    $OpenFileDialog.initialDirectory = "C:\"
    $OpenFileDialog.ShowDialog() | Out-Null
    $OpenFileDialog.filename
}

$filename = Get-FileName

while(1){
Get-Content $filename -Tail 20
    Start-Sleep -Seconds 5
    Clear
    }