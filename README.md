# Scripts & Other stuff

My wee set of personal notes and scripts to help my day 2 day tasks.

## wfh.sh
Script that ask you many times for the same password...

As a result, you then don't forget that you haven't authenticated in okta nor you are out of the vpn

I makes @Nev happy as it updates your ubuntu to the latest.

## slow-start.txt
A set of notes that allowed me to make my start-up a wee bit faster. In my case from 45 minutes to a couple of minutes.

Stuff that I learned

This command will tell you what took longer starting up

`systemd-analyze blame`

But is probably more important to use the following one

`systemd-analyze critical-chain`

Sophos really likes to email you and, in my case, was trying to do it for over 30 minutes. Just disable the email (system) notifier

`/opt/sophos-av/bin/savconfig set EmailNotifier disabled`

And disable apt-daily... and just run the wfh.sh everyday

```
sudo systemctl disable apt-daily.service
sudo systemctl disable apt-daily.timer
sudo systemctl disable apt-daily-upgrade.timer
sudo systemctl disable apt-daily-upgrade.service
```

And disable docker.service and enable docker.socket

```
systemctl enable docker.socket
systemctl disable docker.service
```