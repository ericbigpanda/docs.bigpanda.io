---
layout: integration 
title: "Ansible"
type: Deployment
draft: false
---

#### Install the BigPanda Ansible Module
If you're using Ansible v1.8 or higher, you do not need to install the BigPanda Ansible module. Go directly to the next step.

If you're using Ansible v1.7 or lower, run the following commands to download the module file into a `library` directory next to your playbook:

    mkdir playbooks; curl https://s3-us-west-1.amazonaws.com/bp-public/ansible/bigpanda > library/bigpanda

For more details about the module, use `ansible-doc`:

    ansible-doc -M library bigpanda

<!-- section-separator -->

#### Notify BigPanda When a Deployment Starts
Add one of the following options into your playbook to send a notification at the start of a deployment.

**Note:** You must replace `component` and `version` with the correct values for your deployment.

##### Option 1: Simple (Unregistered Event)

    - name: Start BigPanda deployment
      local_action: bigpanda token=$TOKEN component={{app_name}} version={{app_version}} hosts={{ansible_hostname}} state=started

##### Option 2: Advanced (Registered Event)
You can register the event to use the deployment information on later tasks. This can be useful if you have a common finish task that is used by multiple deployment start tasks.

    - name: Start BigPanda deployment
      local_action: bigpanda token=$TOKEN component={{app_name}} version={{app_version}} hosts={{ansible_hostname}} state=started
      register: deployment

<!-- section-separator -->

#### Notify BigPanda When a Deployment Ends
Add one of the following options into your playbook to send a notification at the end of a deployment.

**Note:** Deployments will appear as in-progress until you send this notification.

##### Option 1: Simple (Unregistered Event)

    - name: End BigPanda deployment
      local_action: bigpanda token=$TOKEN component={{app_name}} version={{app_version}} hosts={{ansible_hostname}} state=finished

Or, in case of failure:

    - name: End BigPanda deployment
      local_action: bigpanda token=$TOKEN component={{app_name}} version={{app_version}} hosts={{ansible_hostname}} state=failed


##### Option 2: Advanced (Registered Event)
Use the information from the previously registered deployment object.

    - name: End BigPanda deployment
      local_action: bigpanda token={{deployment.token}} component={{deployment.component}} version={{deployment.version}} hosts={{deployment.hosts}} state=finished

Or, in case of failure:

    - name: End BigPanda deployment
      local_action: bigpanda token={{deployment.token}} component={{deployment.component}} version={{deployment.version}} hosts={{deployment.hosts}} state=failed
