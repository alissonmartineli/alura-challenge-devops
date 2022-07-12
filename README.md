# Alura Challenge DevOps

O desafio consiste em preparar uma aplicação, previamente desenvolvida, para produção utilizando containers Docker e automatizar o processo através de rotinas de CI/CD.

### Etapas do challenge

- [x] Dockerizar a aplicação
- [x] Realizar deploy na nuvem
- [ ] Implantar rotinas de CI/CD

## Processo para execução da aplicação dockerzida

Estou utilizando git submodules para manter o repositório da aplicação vinculado a este repositório, por isso, se você deseja cloná-lo e executar os passos abaixo, deverá inicializar e atualizar o submodule após clonar. Ou apenas adicione a flag _--recursive_ ao clonar.

```sh
git clone https://github.com/alissonmartineli/alura-challenge-devops.git --recursive
```

### Build da Imagem

```sh
docker build -t alura-challenge-devops .
```

### Executando o Container

```sh
docker run --rm -p 8000:8000 alura-challenge-devops .
```
