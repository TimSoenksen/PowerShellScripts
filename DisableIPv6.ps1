#Goes through each ipv6 adapter binding and sets all statuses to "disabled"
$ipv6bindings = Get-NetAdapterBinding | Where-Object {$_.DisplayName -eq 'Internet Protocol Version 6 (TCP/IPV6)'}
foreach($ipv6binding in $ipv6bindings){
    Disable-NetAdapterBinding -InterfaceAlias $ipv6binding.Name -ComponentID ms_tcpip6
}