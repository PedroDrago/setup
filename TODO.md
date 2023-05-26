10. Modificar instalação do obsidian (método vale pra qualquer app em flatpak. Também verificar se algum app em snap ainda é necessario, e se for, migrar para flatpak)
    - Método consiste em instalar normalmento app via flatpak
    - Criar um symlink do binario flatpak para o path de binarios usr/bin, isso adiciona a aplicação no dmenu


1. Criar scripts bash especificos para cada sistema (ubuntu-desktop, WSL2, ubuntu-laptop):
	- esses scripts terao um comando ansible `ansible-playbook local.yml --tags "tag1,tag2..."
	- a ideia eh que todas as tasks (menos langs) estejam carregadas em local.yml, e cada script bash inclui/exclui as tags especificas.
	- adicionar ao README os 3 quickinstalls especificos ja rodando o script bash indicado.

2. Achar alguma maneira de o script nao esperar meu input de YES no primeiro repositorio meu clonado. Deve ter alguma funcionalidade no builtin.git. Esse problema acontece quando clonando Vault (nessa task), mas acredito que deve acontecer na clonagem do primeiro repositorio.

3. Mudar isntalação do nvim (tirar da task core e adicionar task so para o nvim).


4. adicionar task so para adicionar asdf no sistema, e tirar parte do asdf do langs.yml.
deixar esse playbook exclusivo para langs. 



5. unsnap system: https://www.youtube.com/watch?v=ZSsrXH_q33w
