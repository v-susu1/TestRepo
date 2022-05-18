param (
	[string]$step,
    [string]$p1
)

if($step -eq '1'){

	$b = "http://www.baidu.com"
	Write-Host "##vso[task.setvariable variable=t2;isOutput=true]$b"
	
} else if($step -eq '2') {
	Write-Host "Pass parameter p1=$p1"
	Write-Host "Pass parameter p1=$Env:t2"
}