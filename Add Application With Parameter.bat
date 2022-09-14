set key=PROGRAMNAMEHERE
%SystemRoot%\System32\reg.exe ADD HKEY_CLASSES_ROOT\%key% /ve /d "URL:Description" 
%SystemRoot%\System32\reg.exe ADD HKEY_CLASSES_ROOT\%key% /v "URL Protocol" /d "" 
%SystemRoot%\System32\reg.exe ADD HKEY_CLASSES_ROOT\%key%\shell /ve /d "open" 
%SystemRoot%\System32\reg.exe ADD HKEY_CLASSES_ROOT\%key%\shell\open /ve /d "Open %key%" 
%SystemRoot%\System32\reg.exe ADD HKEY_CLASSES_ROOT\%key%\shell\open\command /ve /d "\"C:\%key%\%key%.bat\" /U \"%%1\"" /f >nul
timeout /t 1