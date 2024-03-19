$Env:CONDA_EXE = "C:\Users\legio\OneDrive\Desktop\roop\unleashed\roop-unleashed-main\installer\installer_files\conda\Scripts\conda.exe"
$Env:_CE_M = ""
$Env:_CE_CONDA = ""
$Env:_CONDA_ROOT = "C:\Users\legio\OneDrive\Desktop\roop\unleashed\roop-unleashed-main\installer\installer_files\conda"
$Env:_CONDA_EXE = "C:\Users\legio\OneDrive\Desktop\roop\unleashed\roop-unleashed-main\installer\installer_files\conda\Scripts\conda.exe"
$CondaModuleArgs = @{ChangePs1 = $True}
Import-Module "$Env:_CONDA_ROOT\shell\condabin\Conda.psm1" -ArgumentList $CondaModuleArgs

Remove-Variable CondaModuleArgs