# -------------------------------------------------------
# Writing and Using Cmdlets
# -------------------------------------------------------
[cmdletbinding(SupportsShouldProcess=$true)]
param(
    [Parameter(ParameterSetName = 'Default', ValueFromPipeline = $false, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
    [String]$Path
)
process {
    if($PSCmdlet.ShouldProcess("Username","Will delete ADUser")) {
        Write-Host "Process block ran for $($Path)"
        Write-Verbose "Debug message"
        "I ran"
    }
}
