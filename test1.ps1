param (
    [string]$step,
    [string]$p1
)

Write-Host "Args: -step $step -p1 $p1"

if($step -eq '1'){

	$b = "http://www.baidu.com"
	Write-Host "##vso[task.setvariable variable=t2;isOutput=true]$b"
	
} else {
	Write-Host "Pass parameter p1 = $p1"
	Write-Host "Pass parameter p2 = $Env:t2"
	
	$t3Url = "http://www.google.com"
	Write-Host ("##vso[task.setvariable variable=t3;]$t3Url")
	Write-Host "Compare Url: $t3Url"
}
