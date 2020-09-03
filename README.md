# docker-hostnames
Sync docker container names with hosts file from our machine 

This little script get the IPs of active containers and uses their names to sync with your /etc/hosts.
Every time the script is called, it removes the stopped containers and add the new ones, always keeping your original records safe.

**Usage**

```sudo ./docker-hostnames.sh```

**Other usages**
- Use this little script as a bash function
- Add the script to your crontab
- Use docker events/hooks to execute this script every time a container is started


**TODO:**
- Windows support