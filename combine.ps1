# Nome do script: JoinOpenApiFiles.ps1

# Define o diretório onde estão os arquivos YAML
$directoryPath = ".\sigae_apis"

# Obtém todos os arquivos YAML no diretório especificado
$yamlFiles = Get-ChildItem $directoryPath\*.yaml | Sort-Object Name

# Verifica se há pelo menos dois arquivos YAML, requisito para o redocly join
if ($yamlFiles.Count -lt 2) {
    Write-Host "Não há arquivos YAML suficientes para realizar o join. São necessários pelo menos dois arquivos."
    exit
}

# Inicializa a variável de comando com 'redocly join'
$command = "redocly join"

# Adiciona cada arquivo ao comando
foreach ($file in $yamlFiles) {
    $command += " " + $file.FullName
}

# Adiciona a parte final do comando para especificar o arquivo de saída
$command += " -o .\combined.yaml"

# Mostra o comando que foi construído
Write-Host "Comando construído: $command"

# Executa o comando
Invoke-Expression $command

# Mensagem de sucesso
Write-Host "Os arquivos YAML foram combinados com sucesso em combined.yaml"
