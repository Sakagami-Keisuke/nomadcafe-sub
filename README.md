**個人制作アプリ NomadCafe**
----------
![image](https://user-images.githubusercontent.com/60636597/80310976-39e31f00-8818-11ea-9495-e0b947597d09.png)
![image](https://user-images.githubusercontent.com/60636597/80310990-48c9d180-8818-11ea-8f8d-fe7f32b17717.png)
![image](https://user-images.githubusercontent.com/60636597/80311134-cd1c5480-8818-11ea-962a-addb0af96f91.png)
![image](https://user-images.githubusercontent.com/60636597/80310999-541cfd00-8818-11ea-8cdc-aa5f2dfc4071.png)

#このアプリで得られる体験

学生や社会人でノマド（放浪）的に学習したり仕事をしたりする人向け  
wifiや電源がフリーでノマドワークに適したお店を地図、テキスト画像で表示。  
アプリを開く一手間で、  
現在地からお店までの位置をgoogle mapsで示し、即座にご案内します。  

**機能の紹介**
----------
*wifiや電源がフリーでノマドワークに適したお店を表示（事前に調べて保存した情報を表示）  
*お店の営業日時、電源、料金、雰囲気をテキストや写真、動画で説明（予定）  
*GoogleCloudプラットフォーム サービスを利用（無料契約有り）  
*Maps JavaScript APIを利用し地図表示（無料）  
*Geolocation APIを利用し現在位置表示取得（無料）  
*現在地からお店までの経路案内機能の追加（予定・無料）  
*メンテナンスは管理者のみ行う、サインインしてデータの追加や編集削除を行う（予定）  
*ユーザーはサインインなしでアプリにアクセス、自由に閲覧できる  

**実装を完了した機能の一覧**
----------
１）デモデータの充実(起動時にdb:seef.fuコマンドでモデルに事前投入）　　
&emsp;&emsp;お店データ:18件、 画像データ:82枚  
２）GoogleMaps地図表示　(Google Cloud Platformサービス maps javascriput api使用)    
&emsp;&emsp;２種類の地図表示　（お店一覧ページで全店舗の吹き出し表示、お店詳細ページでそのお店だけの吹き出し表示）  
３）ナビ機能　googlemap URLスキームを利用  
&emsp;&emsp;お店一覧ページで全店舗の吹き出し表示のリンク、お店詳細ページでのナビボタンリンクで起動  
&emsp;&emsp;→本家がアプリ起動し同時にナビ開始  
４）サインイン機能(devise)  
&emsp;&emsp;手軽に使ってもらうため、ニックネーム、パスワードのみにカスタム  
５）簡単ログインボタン  
&emsp;&emsp;管理者やユーザーとして、簡単にテストログインできる  
６）CRUD機能（管理者のみ登録編集削除可）  
&emsp;&emsp;管理者はお店情報、画像、コメントを登録、編集、削除可能    
7）コメント（口コミ）投稿削除機能       
&emsp;&emsp;ユーザーはコメントの登録、削除のみ可能  
8）画像アップロード機能（carrierwave）    
9）スマホレスポンシブ機能   
&emsp;&emsp;非Bootstrap、スクラッチ  
10）おすすめ度・星評価（DB取得型cssのみ）  
&emsp;&emsp;評価レート１〜５のdbデータを取得し、星表示  
１１）お問合せフォーム機能（入力/確認/お礼/自動Gmail送信機能）   
&emsp;&emsp;サインインアウト状態問わず、お問い合わせフォームに遷移でき、メッセージ送信で自動でgmailが管理者に届く  
12)Docker、docker-compose　　
&emsp;&emsp;ローカル環境にてDocker実装、Dockerfile、Docker-composeにてイメージ、コンテナを管理  
１２）テストの実施（model)  
&emsp;&emsp;RSpec、factory_bot使用　　
&emsp;&emsp;作業中....  
１４）AWS ECSを使用したデプロイ  
&emsp;&emsp;EC2インスタンスt3.micro、ECRイメージ管理　　
&emsp;&emsp;作業中....  
15)CI/CDパイプライン構築  
 
**Qiita投稿**
----------    
[①Dockerを初めて導入して基本操作する (2020.4時点)](https://qiita.com/SakagamiKeisuke/items/4455631886b1c15a3b69) 2200view,44LGTM  
[②Dockerを初めて導入してRails sする (2020.4時点)](https://qiita.com/SakagamiKeisuke/items/d64ee54c22378223659a)700view,7LGTM  
[③Docker MYSQLにデモデータ(seed_fu)を投入する(2020.4時点)](https://qiita.com/SakagamiKeisuke/items/4ce1c4a4921abb57b896)200view  
[④ローカルDocker環境でデータ永続化、entrypointでseed_fuをやり直しする(2020.4.時点](https://qiita.com/SakagamiKeisuke/items/8d3fc70a2939cd4bbe3e)780view,2LGTM  
[⑤AWS仮想サーバを利用する、AWSアカウント作成 + EC2インスタンス作成(2020.4時点)](https://qiita.com/SakagamiKeisuke/items/9568754f318edd53e39d)270view  
[⑥ 知識ゼロからAWSインフラ構築・VPC + EC2 + SSHログイン する（2020.4時点）](https://qiita.com/SakagamiKeisuke/items/cf8c026f243053829c0b)390view,4LGTM  

**開発日数**
----------
作業期間　2020年3月29日　〜 2020年4月26日  
工　数　29日/230時間 (4/26時点)  
うち、アプリ機能実装　日数　12日/120時間  
うち、Dockerローカル開発環境設定 ５日/50時間  
うち、テスト、Dockerデプロイ　12日/60時間

**使用gem一覧**
------
*gem 'haml-rails'  
*gem 'font-awesome-sass'  
*gem 'pry-rails'  
*gem 'seed-fu'  
*gem 'devise'  
*gem 'devise-i18n'  
*gem 'devise-i18n-views'  
*gem 'carrierwave'  
*gem 'mini_magick'  
*gem 'jquery-rails'  
*gem 'rspec-rails'  
*gem 'factory_bot_rails'  

**雑食系エンジニアサロンなどの参考情報を元に、自分のマイルストーンを決めて開発作業を行っている**
------------------------------
○ 「UI/UXを整える」  
○ 「READMEをきちんと書く」  
○ 「実用的なデモデータを登録」  
○ 「GitHubのイシュー、プルリクを活用」  
○ 「かんたんログイン機能をの実装」    
○ 「CRUDの実装」  
○ 「Google Maps API地図、マーカー、吹き出し機能を実装」     
○ 「データベース情報取得したmap表示機能の実装」  
○ 「データベース情報取得したmap表示機能の実装」  
○ 「ユーザーから管理者への問合せフォームの実装」  
○ 「スマホビューで破綻しないレスポンシブデザインの実装」   
○ 「スクラッチでそこそこの装飾をする」  
○ 「コードに綺麗にする」 静的コードチェックアプリを活用する  
○ 「テストを細かく書く」  
○ 「Capistranoを理解活用する」  
○ 「nginxを理解活用する」  
○ 「インフラにAWSサービスを活用する」   
○ 「Dockerを活用する」    
○ 「CircleCIを使ってCI/CDパイプラインを構築」    

**言語・使用技術**
----------
●フロント  
Haml  
scss  
JavaScript    
●バックエンド  
ruby 2.5.1  
Ruby on Rails 5.2.4.2  
●サーバー    
●DB  
mysql  Ver 14.14  

●インフラ・仮想環境  
Docker/docker-compose  
AWS（ECS,ECR,VPC,EC2,S3,Route 53）  
CircleCI（CI/CD)  
Capistrano3  
RSpec, factory_bot 
静的解析ツールgem RuboCop  

**連絡先**
----------
坂上計介 サカガミケイスケ
Gmail /  iwayasunset@gmail.com
