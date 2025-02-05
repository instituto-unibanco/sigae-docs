# Documentação das APIs do SIGAE

## Como Atualiazar a definição de uma API
1. Abrir uma nova branch a partir da `main`.
2. Adicionar/Atualizar a definição da API do microserviço em `apis/{nome-da-api}/openapi.yaml`.
3. Abrir uma Pull Request para a branch `main`.

## Como Visualizar a Documentação Localmente
1. Instalar o [Node JS](https://nodejs.org/).
2. Clonar este repositorio e executar `npm install`.
3. Executar `npm run lint` para validar a sintaxe das definições das APIs.
4. Executar `npm run build` para gerar o arquivo `docs/{nome-da-api}.html` para cada uma das APIs.
