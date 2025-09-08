$files = Get-ChildItem -Path ./ -Recurse -File
    | Where-Object { $_.Extension -eq ".typ" }

foreach ($file in $files) {
    $content = Get-Content -Path $file.FullName
    
    $content = $content -replace '\\in', 'in'
    $content = $content -replace '\\notin', 'in.not'

    $content = $content -replace '\\lor', 'or'
    $content = $content -replace '\\land', 'and'
    $content = $content -replace '\\lnot', 'not'

    $content = $content -replace '\\cap', 'inter'
    $content = $content -replace '\\cup', 'union'
    $content = $content -replace '\\setminus', 'without'

    $content = $content -replace '\\emptyset', 'emptyset'

    $content = $content -replace '\\mid', '|'
    $content = $content -replace '……', 'dots'

    $content = $content -replace '\\{', '{'
    $content = $content -replace '\\}', '}'

    $content = $content -replace '\\mathbb{([A-Za-z])}', '$1$1'
    $content = $content -replace '\\text\{([^\}]*)\}', '"$1"'

    Set-Content -Path $file.FullName -Value $content
}