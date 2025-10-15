# Setting up GitHub repo by Terraform

Firstly, clone this repo on your local host:

'''
git clone https://github.com/The-A-Team-organization/github_terraform_setup.git
'''

Than add needed values to variables in the .tfvar file:

'''
user_token = ""
organization = ""
repo_name = ""
'''

After you can run:

'''
make apply
'''

And wait until the repo is created!
