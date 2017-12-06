### 1.Run these commands in shell

```
cd /home/deploy/peatio/current/app/controllers/private/deposits/
cp satoshis_controller.rb materiacoins_controller.rb
sed -i 's/satoshi/materiacoin/g' materiacoins_controller.rb
sed -i 's/Satoshi/Materiacoin/g' materiacoins_controller.rb
git add materiacoins_controller.rb
cd /home/deploy/peatio/current/app/controllers/private/withdraws/
cp satoshis_controller.rb materiacoins_controller.rb
sed -i 's/satoshi/materiacoin/g' materiacoins_controller.rb
sed -i 's/Satoshi/Materiacoin/g' materiacoins_controller.rb
git add materiacoins_controller.rb

cd /home/deploy/peatio/current/app/models/deposits
cp satoshi.rb materiacoin.rb
sed -i 's/Satoshi/Materiacoin/g' materiacoin.rb
git add materiacoin.rb
cd /home/deploy/peatio/current/app/models/withdraws
cp satoshi.rb materiacoin.rb
sed -i 's/Satoshi/Materiacoin/g' materiacoin.rb
git add materiacoin.rb

cd /home/deploy/peatio/current/app/views/admin/deposits
cp -R satoshis materiacoins
cd /home/deploy/peatio/current/app/views/admin/deposits/materiacoins
sed -i 's/Satoshi/Materiacoin/g' index.html.slim
sed -i 's/satoshi/materiacoin/g' index.html.slim
git add index.html.slim
git add edit.html.slim

cd /home/deploy/peatio/current/app/views/admin/withdraws
cp -R satoshis materiacoins
git add materiacoins
cd /home/deploy/peatio/current/app/views/admin/withdraws/materiacoins
sed -i 's/Satoshi/Materiacoin/g' index.html.slim
sed -i 's/satoshi/materiacoin/g' index.html.slim
sed -i 's/Satoshi/Materiacoin/g' _table.html.slim
sed -i 's/satoshi/materiacoin/g' _table.html.slim
sed -i 's/Satoshi/Materiacoin/g' show.html.slim
sed -i 's/satoshi/materiacoin/g' show.html.slim
git add index.html.slim
git add _table.html.slim
git add show.html.slim

cd /home/deploy/peatio/current/app/views/private/assets
cp _btc_assets.html.slim _mtr_assets.html.slim
sed -i 's/btc/mtr/g' _mtr_assets.html.slim
git add _mtr_assets.html.slim

cd /home/deploy/peatio/current/app/views/private/withdraws/
cp -R satoshis materiacoins
cd materiacoins
sed -i 's/Satoshi/Materiacoin/g' new.html.slim
sed -i 's/satoshi/materiacoin/g' new.html.slim
sed -i 's/satoshi/materiacoin/g' edit.html.slim
sed -i 's/Satoshi/Materiacoin/g' edit.html.slim
git add new.html.slim
git add edit.html.slim

cd /home/deploy/peatio/current/public/templates/funds
cp deposit_btc.html deposit_mtr.html
sed -i 's/btc/mtr/g' deposit_mtr.html
git add deposit_mtr.html
cp withdraw_btc.html withdraw_mtr.html
sed -i 's/btc/mtr/g' withdraw_mtr.html
git add withdraw_mtr.html

cd /home/deploy/peatio/current/app/controllers/admin/deposits
cp satoshis_controller.rb materiacoins_controller.rb
sed -i 's/satoshi/materiacoin/g' materiacoins_controller.rb
sed -i 's/Satoshi/Materiacoin/g' materiacoins_controller.rb
git add materiacoins_controller.rb

cd /home/deploy/peatio/current/app/controllers/admin/withdraws
cp satoshis_controller.rb materiacoins_controller.rb
sed -i 's/satoshi/materiacoin/g' materiacoins_controller.rb
sed -i 's/Satoshi/Materiacoin/g' materiacoins_controller.rb
git add materiacoins_controller.rb

cd /home/deploy/peatio/current/public/templates/funds
cp withdraw_btc.html withdraw_mtr.html
sed -i 's/btc/mtr/g' withdraw_mtr.html
git add withdraw_mtr.html

cd /home/deploy/peatio/current/public/templates/funds
cp deposit_btc.html deposit_mtr.html
sed -i 's/btc/mtr/g' deposit_mtr.html
git add deposit_mtr.html
```

### 2. Make some changes or add stuff to these files according to your coin

```
nano /home/deploy/peatio/current/app/models/admin/ability.rb
nano /home/deploy/peatio/current/app/assets/javascripts/funds/models/withdraw.js.coffee
nano /home/deploy/peatio/current/app/controllers/private/assets_controller.rb
? nano /home/deploy/peatio/current/spec/models/fund_source_spec.rb
? nano /home/deploy/peatio/current/spec/factories/fund_source.rb
? nano /home/deploy/peatio/current/spec/controllers/private/assets_controller_spec.rb
nano /home/deploy/peatio/current/app/views/private/assets/_liability_tabs.html.slim // add to .ul.nav.nav-tabs and .tab-content
nano /home/deploy/peatio/current/app/views/private/assets/index.html.slim // add to ul.nav.nav-justified.asssets-nav and content_for
nano /home/deploy/peatio/current/public/templates/funds/deposit.html
nano /home/deploy/peatio/current/public/templates/funds/withdraw.html
```
### 3. edit some config files

```
nano /home/deploy/peatio/current/config/withdraw_channels.yml
nano /home/deploy/peatio/current/config/deposit_channels.yml
nano /home/deploy/peatio/current/config/markets.yml
nano /home/deploy/peatio/current/config/currencies.yml
nano /home/deploy/peatio/current/config/currencies.yml.example
```
### 4. edit some locales

```
nano /home/deploy/peatio/current/config/locales/server.en.yml
nano /home/deploy/peatio/current/config/locales/client.en.yml

```
### 5. Upload Coin logo

```
upload icon-mtr.png
cd /home/deploy/peatio/current/public
git add icon-mtr.png
```
### 6. push results to github
```
git add /home/deploy/peatio/current/app/models/admin/ability.rb
git add /home/deploy/peatio/current/app/assets/javascripts/funds/models/withdraw.js.coffee
git add /home/deploy/peatio/current/app/controllers/private/assets_controller.rb
git add /home/deploy/peatio/current/spec/models/fund_source_spec.rb
git add /home/deploy/peatio/current/spec/factories/fund_source.rb
git add /home/deploy/peatio/current/spec/controllers/private/assets_controller_spec.rb
git add ~/peatio/current/app/views/private/assets/_liability_tabs.html.slim
git add ~/peatio/current/app/views/private/assets/index.html.slim
git add ~/peatio/current/config/currencies.yml.example
git add ~/peatio/current/config/deposit_channels.yml
git add ~/peatio/current/config/locales/client.en.yml
git add ~/peatio/current/config/locales/server.en.yml
git add ~/peatio/current/config/withdraw_channels.yml
git add ~/peatio/current/public/templates/funds/deposit.html
git add ~/peatio/current/public/templates/funds/withdraw.html
git commit -m "Materia & berycoin Support"
git push origin
```
