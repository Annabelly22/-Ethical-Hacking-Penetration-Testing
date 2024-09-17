param($network, $server)

For($i=1; $i -le 254; $i++){
	$obj = Resolve-DnsName -DnsOnly "$network.$i" -Server "$server" -ErrorAction Ignore
	if($obj){
		Write-Host "$network.$i" "$(($obj | Select-Object -Property NameHost).NameHost)"
	}
}