# Remove duplicates of $_PATH
$env:PATH = ($env:PATH -split ';' | Select-Object -Unique) -join ';'

# oneAPI environment variables
Invoke-BatchFile 'C:\Program Files (x86)\Intel\oneAPI\setvars.bat' --force

# HF token
$env:HF_TOKEN=$(Get-Content $env:USERPROFILE/.cache/huggingface/token)