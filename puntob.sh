ip address show
ssh-keygen
cat .ssh/id_rsa.pub y pego la llave en la otra vm(en $HOME/.ssh/authorized.keys)
ssh vagrant@192.168.56.9
git clone https://github.com/upszot/UTN-FRA_SO_Ansible.git
ansible-playbook -i inventory playbook.yml                      
