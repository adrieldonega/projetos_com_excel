# Pegar o diretorio atual  onde o projeto está.
$scriptDirectory = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

# Arquivo de Saída com todos SQL
$outputFile = Join-Path -Path $scriptDirectory -ChildPath "migration.sql"

#Verifica se o arquivo ja existe, se existir deleta

if(Test-Path $outputFile){
    Remove-Item $outputFile
}

# Pega conteudo dos arquivos
$sqlFiles = Get-ChildItem -Path $scriptDirectory -Filter *.sql -File | Sort-Object Name

# Concatena arquivos
foreach($file in $sqlFiles){
    Get-Content $file.FullName | Out-File -Append -FilePath $outputFile
    "GO" | Out-File -Append -FilePath $outputFile 
}

Write-Host "Todos os arquivos foram combinados em $outputFile"