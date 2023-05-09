# kbot
### my telegram bot project (prometheus)
Адресса бота t.me/xminyax_bot

**Init project**
1. Init go module \
<code>go mod init github.com/xminyax/kbot</code>
2. install codegenerator cobra-cli \
<code>go install github.com/spf13/cobra-cli@latest</code>
3. generate main.go and 'cmd' dir \
<code>cobra-cli init</code>
4. add version ( generate versionin.go ) \
<code>cobra-cli add version</code>
5. generate telebot.go \
<code>cobra-cli add telebot</code>
6. set version \
<code>go build -ldflags "-X="github.com/xminyax/kbot/cmd.appVersion=v1.0.0</code>

**Kbot integration**

1. Create new bot in BotFather, copy token and set token securely wit command: \     
<code>read -s TELE_TOKEN</code>
2. Press Enter (or return) and paste token copied earlier. \
Check token: \
<code>echo $TELE_TOKEN</code>
3. Export variable. \
<code>export TELE_TOKEN</code>
4. Download and install dependencies. \
<code>go get</code>
5. Build and update version to v1.0.1 \
<code>go build -ldflags "-X="github.com/xminyax/kbot/cmd.appVersion=v1.0.0</code>
6. Run app. \
<code>./kbot start</code>

**Chat in Telegram bot**

Open in Telegram chat @xminyax_bot and send \
<code>/start hello</code>
