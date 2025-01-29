# Documentação das APIs do SIGAE

## Como Atualiazar a definição de uma API
1. Abrir uma nova branch a partir da `main`.
2. Adicionar/Atualizar a definição da API do microserviço no diretório `sigae_apis` ou `devolutivas_apis`.
> Se a versão da API for diferente de 3.0.1, alterar para ela.
3. Abrir uma Pull Request para a branch `main`.

## Como Visualizar a Documentação Localmente
1. Instalar o [Node JS](https://nodejs.org/).
2. Clonar este repositorio e executar `npm install` na raíz do projeto.
3. Executar `npm run join` para combinar as definições de APIs de todos os microserviços no arquivo `dist/bundle.yaml`.
4. Executar `npm run lint` para verificar a sintaxe do arquivo `dist/bundle.yaml`.
5. Executar `npm run build` para gerar o arquivo `docs/index.html` com a documentação completa das APIs.
6. Executar `npm start` para rodar a documentação no browser local.
7. Após terminar o start, a documentação resultando pode ser consultada no endereço local: http://localhost:8080/.

## Configurações Adicionais
* Para [atualizar](#como-atualiazar-a-definição-de-uma-api), é importante notar que:
    - Deve ser compatível com a versão do OpenAPI 3.0.1;




 