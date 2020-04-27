**個人制作アプリ NomadCafe**
----------
![image](https://user-images.githubusercontent.com/60636597/80310976-39e31f00-8818-11ea-9495-e0b947597d09.png)
![image](https://user-images.githubusercontent.com/60636597/80310990-48c9d180-8818-11ea-8f8d-fe7f32b17717.png)
![image](https://user-images.githubusercontent.com/60636597/80311134-cd1c5480-8818-11ea-962a-addb0af96f91.png)
![image](https://user-images.githubusercontent.com/60636597/80310999-541cfd00-8818-11ea-8cdc-aa5f2dfc4071.png)

#このアプリで得られる体験

学生や社会人でノマド（放浪）的に学習したり仕事をしたりする人向け <br> 
wifiや電源がフリーでノマドワークに適したお店を地図、テキスト画像で表示。  <br>
アプリを開く一手間で、  <br>
現在地からお店までの位置をgoogle mapsで示し、即座にご案内します。 <br> 

**機能の紹介**
----------
*wifiや電源がフリーでノマドワークに適したお店を表示（事前に調べて保存した情報を表示）  <br>
*お店の営業日時、電源、料金、雰囲気をテキストや写真、動画で説明（予定） <br> 
*GoogleCloudプラットフォーム サービスを利用（無料契約有り） <br> 
*Maps JavaScript APIを利用し地図表示（無料）  <br>
*Geolocation APIを利用し現在位置表示取得（無料） <br> 
*現在地からお店までの経路案内機能の追加（予定・無料）  <br>
*メンテナンスは管理者のみ行う、サインインしてデータの追加や編集削除を行う（予定） <br> 
*ユーザーはサインインなしでアプリにアクセス、自由に閲覧できる  <br>

**実装を完了した機能の一覧**
----------
１）デモデータの充実(起動時にdb:seef.fuコマンドでモデルに事前投入）<br>
&emsp;&emsp;お店データ:18件、 画像データ:82枚  <br>
２）GoogleMaps地図表示　(Google Cloud Platformサービス maps javascriput api使用) <br>
&emsp;&emsp;２種類の地図表示　（お店一覧ページで全店舗の吹き出し表示、お店詳細ページでそのお店だけの吹き出し表示）<br>
３）ナビ機能　googlemap URLスキームを利用 <br>
&emsp;&emsp;お店一覧ページで全店舗の吹き出し表示のリンク、お店詳細ページでのナビボタンリンクで起動 <br>
&emsp;&emsp;→本家がアプリ起動し同時にナビ開始<br>
４）サインイン機能(devise) <br>
&emsp;&emsp;手軽に使ってもらうため、ニックネーム、パスワードのみにカスタム <br>
５）簡単ログインボタン <br>
&emsp;&emsp;管理者やユーザーとして、簡単にテストログインできる  <br>
６）CRUD機能（管理者のみ登録編集削除可） <br>
&emsp;&emsp;管理者はお店情報、画像、コメントを登録、編集、削除可能 <br>
7）コメント（口コミ）投稿削除機能<br>
&emsp;&emsp;ユーザーはコメントの登録、削除のみ可能<br>
8）画像アップロード機能（carrierwave）<br>
9）スマホレスポンシブ機能  <br>
&emsp;&emsp;非Bootstrap、スクラッチ <br>
10）おすすめ度・星評価（DB取得型cssのみ）  <br>
&emsp;&emsp;評価レート１〜５のdbデータを取得し、星表示 <br>
１１）お問合せフォーム機能（入力/確認/お礼/自動Gmail送信機能）<br>
&emsp;&emsp;サインインアウト状態問わず、お問い合わせフォームに遷移でき、メッセージ送信で自動でgmailが管理者に届く <br>
12)Docker、docker-compose<br>
&emsp;&emsp;ローカル環境にてDocker実装、Dockerfile、Docker-composeにてイメージ、コンテナを管理<br>
１２）テストの実施（model)<br>
&emsp;&emsp;RSpec、factory_bot使用<br>
&emsp;&emsp;作業中.... <br>
１４）AWS ECSを使用したデプロイ<br>
&emsp;&emsp;EC2インスタンスt3.micro、ECRイメージ管理　<br>
&emsp;&emsp;作業中....<br>
15)CI/CDパイプライン構築 <br>
 
**Qiita投稿**
----------    
[①Dockerを初めて導入して基本操作する (2020.4時点)](https://qiita.com/SakagamiKeisuke/items/4455631886b1c15a3b69) 2200view,44LGTM<br>
[②Dockerを初めて導入してRails sする (2020.4時点)](https://qiita.com/SakagamiKeisuke/items/d64ee54c22378223659a)700view,7LGTM<br>
[③Docker MYSQLにデモデータ(seed_fu)を投入する(2020.4時点)](https://qiita.com/SakagamiKeisuke/items/4ce1c4a4921abb57b896)200view<br>
[④ローカルDocker環境でデータ永続化、entrypointでseed_fuをやり直しする(2020.4.時点](https://qiita.com/SakagamiKeisuke/items/8d3fc70a2939cd4bbe3e)780view,2LGTM<br>
[⑤AWS仮想サーバを利用する、AWSアカウント作成 + EC2インスタンス作成(2020.4時点)](https://qiita.com/SakagamiKeisuke/items/9568754f318edd53e39d)270view<br>
[⑥ 知識ゼロからAWSインフラ構築・VPC + EC2 + SSHログイン する（2020.4時点）](https://qiita.com/SakagamiKeisuke/items/cf8c026f243053829c0b)390view,4LGTM<br>

**開発日数**
----------
作業期間　2020年3月29日　〜 2020年4月26日<br>
工　数　29日/230時間 (4/26時点)  <br>
うち、アプリ機能実装　日数　12日/120時間 <br>
うち、Dockerローカル開発環境設定 ５日/50時間 <br>
うち、テスト、Dockerデプロイ　12日/60時間<br>

**使用gem一覧**
------
*gem 'haml-rails' <br>
*gem 'font-awesome-sass'<br>
*gem 'pry-rails'<br>
*gem 'seed-fu'<br>
*gem 'devise'<br>
*gem 'devise-i18n'<br>
*gem 'devise-i18n-views'<br>
*gem 'carrierwave'<br>
*gem 'mini_magick'<br>
*gem 'jquery-rails'<br>
*gem 'rspec-rails' <br>
*gem 'factory_bot_rails'<br>

**雑食系エンジニアサロンなどの参考情報を元に、自分のマイルストーンを決めて開発作業を行っている**
------------------------------
○ UI/UXを整える<br>
○ READMEをきちんと書く<br>
○ 実用的なデモデータを登録<br>
○ GitHubのイシュー、プルリクを活用<br>
○ かんたんログイン機能をの実装<br>
○ CRUDの実装<br>
○ Google Maps API地図、マーカー、吹き出し機能を実装<br>
○ データベース情報取得したmap表示機能の実装<br>
○ データベース情報取得したmap表示機能の実装<br>
○ ユーザーから管理者への問合せフォームの実装<br>
○ スマホビューで破綻しないレスポンシブデザインの実装<br>
○ スクラッチでそこそこの装飾をする<br>
○ コードに綺麗にする」 静的コードチェックアプリを活用する<br>
○ テストを細かく書く<br>
○ Capistranoを理解活用する<br>
○ nginxを理解活用する<br>
○ インフラにAWSサービスを活用する<br>
○ Dockerを活用する<br>
○ CircleCIを使ってCI/CDパイプラインを構築<br>

**言語・使用技術**
----------
●フロント <br>
&emsp;&emsp;Haml/scss/JavaScript<br>
●バックエンド<br>
&emsp;&emsp;ruby 2.5.1 <br>
&emsp;&emsp;Ruby on Rails 5.2.4.2<br>
●サーバー<br>
&emsp;&emsp;Docker web container<br>
●DB<br>
&emsp;&emsp;Docker db container<br>
&emsp;&emsp;mysql Ver 14.14<br>
●インフラ・仮想環境<br>
&emsp;&emsp;Docker/docker-compose<br>
&emsp;&emsp;AWS（ECS,ECR,VPC,EC2,S3,Route 53） <br>
&emsp;&emsp;CircleCI（CI/CD)<br>
&emsp;&emsp;Capistrano3 <br>
●テスト<br>
&emsp;&emsp;RSpec, factory_bot<br> 
&emsp;&emsp;静的解析ツールRuboCop<br>

**連絡先**
----------
坂上計介 サカガミケイスケ
&emsp;&emsp;Gmail /  iwayasunset@gmail.com
