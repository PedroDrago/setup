1. Criar scripts bash especificos para cada sistema (ubuntu-desktop, WSL2, ubuntu-laptop):
	- esses scripts terao um comando ansible `ansible-playbook local.yml --tags "tag1,tag2..."
	- a ideia eh que todas as tasks (menos langs) estejam carregadas em local.yml, e cada script bash inclui/exclui as tags especificas.
	- adicionar ao README os 3 quickinstalls especificos ja rodando o script bash indicado.

2. Achar alguma maneira de o script nao esperar meu input de YES no primeiro repositorio meu clonado. Deve ter alguma funcionalidade no builtin.git.
