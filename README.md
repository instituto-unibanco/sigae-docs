# Documentação das APIs do SIGAE

## Como Atualiazar a definição de uma API
1. Abrir uma nova branch a partir da `main`.
2. Adicionar/Atualizar a definição da API do microserviço no diretório `openapi`.
3. Abrir uma Pull Request para a branch `main`.

## Como Visualizar a Documentação Localmente

1. Instalar o [Node JS](https://nodejs.org/).
2. Clonas este repositorio e executar `npm install` na raíz do projeto.
3. Executar `npm run join` para combinar as definições de APIs de todos os microserviços no arquivo `dist/bundle.yaml`.
4. Executar `npm run lint` para verificar a sintaxe do arquivo `dist/bundle.yaml`.
5. Executar `npm run build` para gerar o arquivo `docs/index.html` com a documentação completa das APIs.

