Start-Process -FilePath C:\\USERS\\VAGRANT\\DOCUMENTS\\vivado-files\\7z2107-x64.exe -Args "/S" -Verb RunAs -Wait
Write-Output "7zip installed."

Write-Output "Add 7zip to PATH environment variable."
Start-Process -FilePath C:\\Windows\\System32\\setx.exe -Args "PATH 'C:\Program Files\7-Zip;%PATH%'" -Verb RunAs -Wait
Write-Output "7zip added to PATH environment variable."

Write-Output "Extract .exe file."
Start-Process -FilePath "C:\\Program Files\\7-Zip\\7z.exe" -Args "x C:\\USERS\\VAGRANT\\DOCUMENTS\\vivado-files\\Xilinx_Unified_2021.1_0610_2318_Win64.exe -o C:\\USERS\\VAGRANT\\DOCUMENTS\\vivado\\" -Verb RunAs -Wait
Write-Output ".exe file extracted."

Write-Output "Copy configuration file and authentication key."
Copy-Item "C:\\USERS\\VAGRANT\\DOCUMENTS\\vivado-files\\install_config.txt" -Destination "C:\\USERS\\VAGRANT\\DOCUMENTS\\vivado\\bin\\"
Copy-Item "C:\\USERS\\VAGRANT\\DOCUMENTS\\vivado-files\\wi_authentication_key" -Destination "C:\\USERS\\VAGRANT\\DOCUMENTS\\vivado\\bin\\"
Write-Output "Files copied."

Write-Output "Start Vivado installation."
Start-Process -FilePath 'C:\Windows\System32\cmd.exe' -Args "C:\\USERS\\VAGRANT\\DOCUMENTS\\vivado\\bin\\xsetup.bat --agree XilinxEULA,3rdPartyEULA,WebTalkTerms --batch Install --config install_config.txt" -Verb RunAs -Wait
Write-Output "Vivado installed."

Write-Output "Add Vivado to PATH environment variable."
Start-Process -FilePath C:\\Windows\\System32\\setx.exe -Args "PATH 'C:\Xilinx\Vivado\2021.1\bin;%PATH%'" -Verb RunAs -Wait
Write-Output "Vivado added to PATH environment variable."
