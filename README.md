Script de Criação de Usuários, Grupos e Diretórios no Linux

Este projeto contém um script em Shell Script (Bash) que automatiza a criação de diretórios, grupos de usuários, usuários e permissões em um sistema Linux.
  O objetivo é demonstrar um exemplo prático de Infraestrutura como Código (IaC) para gerenciamento básico de usuários e permissões.
  O que o script faz

Cria os diretórios:
  /publico
  /adm
  /ven
  /sec

Cria os grupos:
  GRP_ADM
  GRP_VEN
  GRP_SEC

Cria os usuários e os adiciona aos respectivos grupos:
  Grupo ADM: carlos, maria, joao
  Grupo VEN: debora, sebastiana, roberto
  Grupo SEC: josefina, amanda, rogerio

Define uma senha inicial padrão (1234) para cada usuário e força a troca da senha no primeiro login.
  Configura permissões nos diretórios:
  Diretórios de grupo (/adm, /ven, /sec) → acesso restrito apenas ao dono e ao grupo (permissão 770).
  Diretório público (/publico) → acesso liberado para todos os usuários (permissão 777).
