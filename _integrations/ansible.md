---
layout: integration 
title: "Ansible"
type: Deployment
draft: false
---

#### Install the BigPanda Ansible module
If you're using Ansible v1.8 or higher, no installation is needed.

If you're using Ansible v1.7 or lower, perform these steps:

Download the module file below into a `library` directory next to your playbook:

    mkdir playbooks; curl https://s3-us-west-1.amazonaws.com/bp-public/ansible/bigpanda > library/bigpanda

For more details about the module, use `ansible-doc`:

    ansible-doc -M library bigpanda

<!-- section-separator -->

#### Notify BigPanda when a deployment starts
Use the bigpanda module in your playbook to send a notification at the start of a deployment:

##### Option 1: Simple (Unregistered Event)

    - name: Start BigPanda deployment
      local_action: bigpanda token=$TOKEN component={{app_name}} version={{app_version}} hosts={{ansible_hostname}} state=started

**Note:** Don't forget to replace `component` and `version` with the right arguments.

##### Option 2: Advanced (Registered Event)
You can register the event to use the deployment information on later tasks. This can be useful if you have a common finish task that is used by multiple deployment start tasks.

    - name: Start BigPanda deployment
      local_action: bigpanda token=$TOKEN component={{app_name}} version={{app_version}} hosts={{ansible_hostname}} state=started
      register: deployment

**Note:** You must replace `component` and `version` with the correct values for your deployment.

<!-- section-separator -->

#### Notify BigPanda when a deployment ends
Use the bigpanda module in your playbook to send a notification at the end of a deployment:

**Note:** Deployments will be shown as in-progress until you send this notification.

##### Option 1: Simple (Unregistered Event)

    - name: End BigPanda deployment
      local_action: bigpanda token=$TOKEN component={{app_name}} version={{app_version}} hosts={{ansible_hostname}} state=finished

or in case of failure:

    - name: End BigPanda deployment
      local_action: bigpanda token=$TOKEN component={{app_name}} version={{app_version}} hosts={{ansible_hostname}} state=failed


##### Option 2: Advanced (Registered Event)
Use the info from the previously registered deployment object:

    - name: End BigPanda deployment
      local_action: bigpanda token={{deployment.token}} component={{deployment.component}} version={{deployment.version}} hosts={{deployment.hosts}} state=finished

or in case of failure:

    - name: End BigPanda deployment
      local_action: bigpanda token={{deployment.token}} component={{deployment.component}} version={{deployment.version}} hosts={{deployment.hosts}} state=failed
