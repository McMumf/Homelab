# Ansible

Ansible roles and playbooks to initialize a fresh k3s cluster.

## Setup

1. Configure Debian instance(s)
2. Configure Ansible User
    1. Create a new ansible user
    2. Add Ansible User to sudoers

        ```shell
        echo "username ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/username
        ```

    3. Copy SSH Keys

        ```shell
        ssh-copy-id -i ~/.ssh/id_ed25519.pub username@host
        ```

3. Update Your Inventory
4. Run the playbook

    ```shell
    ansible-playbook site.yaml
    ```

