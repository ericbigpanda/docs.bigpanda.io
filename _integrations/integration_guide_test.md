---
layout: integration 
title: "Ansible Integration Guide"
draft: true
---

#### Install the BigPanda Ansible module
Download the module file below into a `library` directory next to your playbook:

    mkdir playbooks; curl https://s3-us-west-1.amazonaws.com/bp-public/ansible/bigpanda > library/bigpanda

For more details about the module, use `ansible-doc`:

    ansible-doc -M library bigpanda

<!-- section-separator -->

#### Notify BigPanda when a deployment starts
Use the bigpanda module in your playbook to send a notification at the start of a deployment:

    - name: Start BigPanda deployment
      local_action: bigpanda token=$TOKEN component={{app_name}} version={{app_version}} hosts={{ansible_hostname}} state=started
      register: deployment

**Note:** Don't forget to replace `component` and `version` with the right arguments.

<!-- section-separator -->

#### Notify BigPanda when a deployment ends
Use the bigpanda module in your playbook to send a notification at the end of a deployment:

    - name: End BigPanda deployment
      local_action: bigpanda state=finished
      args: deployment

or in case of failure:

    - name: End BigPanda deployment
      local_action: bigpanda state=failed
      args: deployment

**Note:** Deployments will be shown as in-progress until you send this notification.
