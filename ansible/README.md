# Ansible

Ansible roles and playbooks to initialize a fresh k3s cluster.

## Setup

1. Configure Debian instance(s)
   1. Note: May need to install sudo depending on how you install
2. Configure Ansible User
    1. Create a new ansible user

    ```yaml
    useradd -m -d /home/ansible-user/ -s /bin/bash -G sudo ansible-user
    passwd ansible-user
    ```

    2. Add Ansible User to sudoers

        ```shell
        echo "ansible-user ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/ansible-user
        ```

    3. Copy SSH Keys

        ```shell
        ssh-copy-id -i ~/.ssh/id_ed25519.pub ansible-user@host
        ```

3. Update Your Inventory
4. Run the playbook

    ```shell
    ansible-playbook -i inventory/hosts.yaml site.yaml
    ```
