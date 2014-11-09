---
layout: page
title: "How do I configure the BigPanda agent behind a proxy server?"
---

This tutorial will walk you through configuring the BigPanda agent to work behind a proxy server:

* ssh to the server where the agent is installed
* open `/etc/bigpanda/bigpanda.conf` in your favorite text editor (e.g. `sudo vim /etc/bigpanda/bigpanda.conf`).
* add the proxy configuration under the `backend` section of the configuration JSON, for example:

```json
{
  "root": {
    "backend": {
       "proxies": {
         "http": "http://10.10.1.10:3128",
         "https": "http://10.10.1.10:3128"
       }
    }
  }
}
```

* save the configuration file and restart the agent.

__Note:__ the proxy configuration semantics are based on the semantics of the [Python Requests](http://docs.python-requests.org/en/latest/user/advanced/#proxies) library. 

