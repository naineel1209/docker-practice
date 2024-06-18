# Configuration Management 

1. Configuration of various servers in a network is a tedious task.
2. Configuration management tools help in automating the configuration of servers.
3. With cloud, the number of servers can increase has increased and size of servers has decreased.
4. Configuration management tools help in managing the configuration of servers in a cloud environment.

## Tools usefull for configuration management

- Ansible - **[Choice for this course]()**
- Puppet - Agent based - master-slave architecture
- Chef

## Ansible

1. Ansible is an open-source automation tool.
2. It is used for configuration management, application deployment, task automation etc.
3. It uses PUSH mechanism to push the configuration to the servers.
4. It is agentless, which means it does not require any agent to be installed on the servers.
5. It uses SSH to connect to the servers.
6. Inventory file is used to define the servers on which the configuration needs to be pushed.

### Dynamic Inventory

1. Inventory file can be static or dynamic.
2. Auto-detection of servers can be done using dynamic inventory.
