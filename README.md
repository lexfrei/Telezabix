Add Telegram-notification support to your Zabbix.

##Installation:
1. Put .sh-file to your AlertScript path (you can find it in zabbix_server.conf)
2. Add new Media type at Administration -> Media types -> Create media type
3. Configure Media in your profile. Set your telegram ID (not phone or nickname) in 'To'-field.


####*Notes*:

• By default it uses my own bot-token. If you want to use it, you need to write something to [@ZabbBot](https://telegram.me/jenkinsbot) in Telegram. You can change it to your or keep using existing.

• If you can't find your telegram ID you can try to send */whoami* to [@JenkinsBot](https://telegram.me/jenkinsbot) (but he is usually turned off) or contact me in telegram ([@LexFrei](https://telegram.me/lexfrei))
