Write-Output "Start MATLAB installation."

Start-Process -FilePath D:\\setup.exe -Args "-inputFile C:\\USERS\\VAGRANT\\DOCUMENTS\\matlab-files\\installer_input.txt" -Verb RunAs -Wait

Get-Content C:\\USERS\\VAGRANT\\DOCUMENTS\\matlab-files\\mathworks.log
