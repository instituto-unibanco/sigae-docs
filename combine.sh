#!/bin/bash
# Nome do script: JoinOpenApiFiles.sh

# Define o diretório onde estão os arquivos YAML
directoryPath="./sigae_apis"

# Obtém todos os arquivos YAML no diretório especificado
yamlFiles=$(find $directoryPath -name "*.yaml" | sort)

# Conta o número de arquivos YAML
count=$(echo "$yamlFiles" | grep -c '^')

# Verifica se há pelo menos dois arquivos YAML, requisito para o redocly join
if [ "$count" -lt 2 ]; then
    echo "Não há arquivos YAML suficientes para realizar o join. São necessários pelo menos dois arquivos."
    exit
fi

# Inicializa a variável de comando com 'redocly join'
command="redocly join"

# Adiciona cada arquivo ao comando
for file in $yamlFiles
do
    command+=" $file"
done

# Adiciona a parte final do comando para especificar o arquivo de saída
command+=" -o ./combined.yaml"

# Mostra o comando que foi construído
echo "Comando construído: $command"

# Executa o comando
eval $command

# Mensagem de sucesso
echo "Os arquivos YAML foram combinados com sucesso em combined.yaml"