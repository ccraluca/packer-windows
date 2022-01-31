Start-Process -FilePath C:\\USERS\\VAGRANT\\DOCUMENTS\\vivado-files\\7z2107-x64.exe -Args "/S" -Verb RunAs -Wait
Start-Sleep -s 30
setx PATH "C:\Program Files\7-Zip;%PATH%"

7z.exe x C:\\USERS\\VAGRANT\\DOCUMENTS\\vivado-files\\Xilinx_Unified_2021.1_0610_2318_Win64.exe -oC:\\USERS\\VAGRANT\\DOCUMENTS\\vivado\\

Copy-Item "C:\\USERS\\VAGRANT\\DOCUMENTS\\vivado-files\\install_config.txt" -Destination "C:\\USERS\\VAGRANT\\DOCUMENTS\\vivado\\bin\\"
Copy-Item "C:\\USERS\\VAGRANT\\DOCUMENTS\\vivado-files\\wi_authentication_key" -Destination "C:\\USERS\\VAGRANT\\DOCUMENTS\\vivado\\bin\\"

cd C:\\USERS\\VAGRANT\\DOCUMENTS\\vivado\\bin\\
.\xsetup --agree XilinxEULA,3rdPartyEULA,WebTalkTerms --batch Install --config install_config.txt

setx PATH "C:\Xilinx\Vivado\2021.1\bin;%PATH%"

