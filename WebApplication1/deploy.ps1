Write-host 'Setting application pool to work with ASP.NET core'
import-module WebAdministration
$appPool = Get-Item IIS:\AppPools\$env:APPLICATION_SITE_NAME
$appPool.managedRuntimeVersion = ""
$appPool | set-item
