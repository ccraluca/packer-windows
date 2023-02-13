Write-Output "Add Xilinx certificate."
certutil -addstore "TrustedPublisher" 'C:\\USERS\\VAGRANT\\DOCUMENTS\\vivado-files\\Xilinx Inc.cer'

Write-Output "Map Network Drive."
net use z: \\10.48.65.12\Vivado_share /user:vagrant vagrant /persistent:Yes
Write-Output "Display mapped drive."
net use

Write-Output "Start Vivado installation."
cd Z:\\2021.1\\bin\\
$env:SEE_MASK_NOZONECHECKS = 1
Start-Process -FilePath Z:\\2021.1\\bin\\xsetup.bat -Args "--agree XilinxEULA,3rdPartyEULA,WebTalkTerms --batch Install --config install_config.txt" -Verb RunAs -Wait | out-null

Write-Output "Add Vivado to PATH environment variable."
$env:PATH += ";C:\Xilinx\Vivado\2021.1\bin"
Write-Output "Vivado added to PATH environment variable."
