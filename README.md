## Docker Magento1 - Devilbox ##
    - Desenvolvedor : Micael Bissoni
    - E-mail : mikael.bissoni@gmail.com
    - Versão : 1.0.0
    - Compatibilidade : Magento 1.x

### Descrição
O objetivo desse docker é alavancar a produtividade com uma rápida configuração de ambiente

### Instalação (Como instalar o docker)
1. Fazer Download do projeto
2. Instalar o docker e o docker-compose
3. Dentro da pasta rodar o comando abaixo para levantar as instancias do servidor:
```
cd /path/to/docker-lamp-magento1
docker-compose up -d
```

### Instalar loja magento dentro do docker
1. clona o projeto para dentro da pasta `docker-lamp-magento1/data/www/`
2. adiciona um host para ser acessado na intranet com nome da pasta do projeto clonado na etapa 1
```
bash addHost.sh nome-do-meu-projeto
```

### Configurar loja
1. Entra no container do docker:
```
./shell
```
2. Dentro do docker roda o script de configuração da loja:
```
bash configurar_projeto.sh nome-do-meu-projeto
```
3. Para acesar a url do projeto só adicionar o nome + `.io` como nesse exemplo: `http://nome-do-meu-projeto.io`

### Informações importantes
Senha e usuário padrão para os acessos é `root`