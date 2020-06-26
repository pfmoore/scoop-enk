~\scoop\apps\scoop\current\bin\checkver.ps1 * bucket -u
git ls-files -m | % {
    git add $_
    git commit -m "$(Split-Path -LeafBase $_) $((Get-Content $_ | ConvertFrom-Json).Version)"
}
