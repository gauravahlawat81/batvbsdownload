AddTrustedSite "https://*.beml.com" 
  
Function AddTrustedSite(strDomainName) 
    Set WshShell = Wscript.CreateObject("Wscript.Shell") 
    strRegKey = "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\" 
    WshShell.RegWrite strRegKey & strDomainName & "\", "", "REG_SZ" 
    WshShell.RegWrite strRegKey & strDomainName & "\*", "2", "REG_DWORD" 
End Function