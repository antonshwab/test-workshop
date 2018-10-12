ansible-vaults-edit:
	ansible-vault edit ansible/production/group_vars/all/vault.yml --vault-password-file-tmp/ansible-vault-password

ansible-deps-install:
	ansible-galaxy install -r requirements.yml
