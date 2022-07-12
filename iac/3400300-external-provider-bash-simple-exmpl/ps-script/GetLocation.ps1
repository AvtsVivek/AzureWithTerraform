# Read the JSON payload from stdin
$jsonpayload = [Console]::In.ReadLine()

# Write host is not working. Its givng error.
# Write-Host "Hello World" -foreground Green -background Red
# Write-Host "Supplied var is " + $json.environment -foreground Green -background Blue

# Convert JSON to a string
$json = ConvertFrom-Json $jsonpayload
$environment = $json.environment
$arg1 = $json.arg1
$arg2 = $json.arg2

if($environment -eq "Production"){
    $location="westeurope"
}else{
    $location="westus"
}

# Write output to stdout
Write-Output "{ 
    ""location"" : ""$location"", 
    ""environment"" : ""$environment"",
    ""arg1"" : ""$arg1"",
    ""arg2"" : ""$arg2""
 }"