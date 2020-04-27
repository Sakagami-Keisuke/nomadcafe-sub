**個人制作アプリ NomadCafe**
----------
![image](https://user-images.githubusercontent.com/60636597/80310976-39e31f00-8818-11ea-9495-e0b947597d09.png)
![image](https://user-images.githubusercontent.com/60636597/80310990-48c9d180-8818-11ea-8f8d-fe7f32b17717.png)
![image](https://user-images.githubusercontent.com/60636597/80311134-cd1c5480-8818-11ea-962a-addb0af96f91.png)
![image](https://user-images.githubusercontent.com/60636597/80310999-541cfd00-8818-11ea-8cdc-aa5f2dfc4071.png)

**NomadCafe企画概要〜開発に対する想い〜**
----------
**■(注)現在のコロナショック・社会経済構造変化より前(2月)に企画制作開始したものです<br>**
&emsp;&emsp;人、モノが流動していた社会が前提の企画です<br><br>
**■FreeWifi+Free電源のカフェは生活必需のインフラである<br>**
&emsp;&emsp;自分が福岡市に転居する前後でまず探したのが、スーパーマーケットとFreeWifi＋Free電源のあるカフェでした<br><br>
**■正確な、最新のFreeWifi+Free電源のカフェの情報がググって簡単に手に入らない<br>**
&emsp;&emsp;個人ブログ記事が散見される程度で情報収集に非常に苦労しました<br>
&emsp;&emsp;つまり、自分の街のFreeWifi+Free電源カフェ情報を俯瞰して選択できる情報源がない状況です<br><br>
**■アプリストアで、FreeWifi+Free電源のカフェ、つまり、ノマドワーク向けに特化したWIFIスポット検索アプリは不存在<br>**
&emsp;&emsp;スマホをワン・ツータッチでFreeWifi+Free電源のカフェを選んで現在地からGMapナビする<br>
&emsp;&emsp;ここでいう「簡単」の概念はブラウジングではなくスマホ操作で非常に簡単に目的達成できるということ<br>
&emsp;&emsp;もしこのアプリがあれば自分のスマホに入れて使うだろうな、自分で作ってみよう、と思って着手しました<br><br>
**■ターゲット、マネタイズ化、スケール化<br>**
&emsp;&emsp;ターゲット（ペルソナー）はスタバに居そうな中学生〜大学生層、サラリーマン・フリーランス層、セミリタイア層<br>
&emsp;&emsp;彼らは一定時間をPCやスマホでネットアクセスしながら自習したり業務して過ごすノマドワーカースタイル<br>
&emsp;&emsp;ノマドワーカーとは、”遊牧民的”に移動しながら作業する人たちの呼び名です<br>
&emsp;&emsp;このアプリはアプリストアリリースし、スマホサービスメインで、アドセンス広告による収益化を想定<br>
&emsp;&emsp;スケール化は、個人ブログやSNS発信、Google検索上位表示（SEO）対策で地道に認知浸透を図ります<br><br>

**このアプリで得られる体験**
----------
●ノマドワークに適したFreeWifi+Free電源のカフェをGoogleMap、テキストや画像で表示します<br>
●アプリを開いてすぐに、どんなカフェがあるか具体的な写真で見せて、現在地からお店までの距離、経路をナビします <br> 
●ユーザーにコメント機能を開放し、口コミを共有できます<br>
●お問い合わせフォームを利用して、ユーザー側からの掲載情報更新の要請などに応えられます<br>

**実装を完了した機能の一覧**
----------
**１）デモデータの充実(起動時にdb:seef.fuコマンドでモデルに事前投入）<br>**
&emsp;&emsp;お店データ:18件、 画像データ:82枚  <br>
**２）GoogleMaps地図表示　(Google Cloud Platformサービス maps javascriput api使用) <br>**
&emsp;&emsp;２種類の地図表示　（お店一覧ページで全店舗の吹き出し表示、お店詳細ページでそのお店だけの吹き出し表示）<br>
**３）ナビ機能　googlemap URLスキームを利用 <br>**
&emsp;&emsp;お店一覧ページで全店舗の吹き出し表示のリンク、お店詳細ページでのナビボタンリンクで起動 <br>
&emsp;&emsp;→本家がアプリ起動し同時にナビ開始<br>
**４）サインイン機能(devise) <br>**
&emsp;&emsp;手軽に使ってもらうため、ニックネーム、パスワードのみにカスタム <br>
**５）簡単ログインボタン <br>**
&emsp;&emsp;管理者やユーザーとして、簡単にテストログインできる  <br>
**６）CRUD機能（管理者のみ登録編集削除可） <br>**
&emsp;&emsp;管理者はお店情報、画像、コメントを登録、編集、削除可能 <br>
**7）コメント（口コミ）投稿削除機能<br>**
&emsp;&emsp;ユーザーはコメントの登録、削除のみ可能<br>
**8）画像アップロード機能（carrierwave）<br>**
**9）スマホレスポンシブ機能  <br>**
&emsp;&emsp;非Bootstrap、スクラッチ <br>
**10）おすすめ度・星評価（レートDB取得css表示）  <br>**
**11）お問合せフォーム機能（入力/確認/お礼/自動Gmail送信機能）<br>**
&emsp;&emsp;サインインアウト状態問わず、お問い合わせフォームに遷移でき、メッセージ送信で自動でgmailが管理者に届く <br>
**12)Docker、docker-compose<br>**
&emsp;&emsp;ローカル環境にてDocker実装、Dockerfile、Docker-composeにてイメージ、コンテナを管理<br>
**13）テストの実施（model)<br>**
&emsp;&emsp;RSpec、factory_bot使用<br>
&emsp;&emsp;作業中.... <br>
**14）AWS ECSを使用したデプロイ<br>**
&emsp;&emsp;EC2インスタンスt3.micro、ECRイメージ管理　<br>
&emsp;&emsp;作業中....<br>
**15)CI/CDパイプライン構築 （着手予定）<br>**
 
**Qiita投稿**
----------    
**[①Dockerを初めて導入して基本操作する (2020.4時点)](https://qiita.com/SakagamiKeisuke/items/4455631886b1c15a3b69) 2200view,44LGTM<br>
[②Dockerを初めて導入してRails sする (2020.4時点)](https://qiita.com/SakagamiKeisuke/items/d64ee54c22378223659a)700view,7LGTM<br>
[③Docker MYSQLにデモデータ(seed_fu)を投入する(2020.4時点)](https://qiita.com/SakagamiKeisuke/items/4ce1c4a4921abb57b896)200view<br>
[④ローカルDocker環境でデータ永続化、entrypointでseed_fuをやり直しする(2020.4.時点](https://qiita.com/SakagamiKeisuke/items/8d3fc70a2939cd4bbe3e)780view,2LGTM<br>
[⑤AWS仮想サーバを利用する、AWSアカウント作成 + EC2インスタンス作成(2020.4時点)](https://qiita.com/SakagamiKeisuke/items/9568754f318edd53e39d)270view<br>
[⑥ 知識ゼロからAWSインフラ構築・VPC + EC2 + SSHログイン する（2020.4時点）](https://qiita.com/SakagamiKeisuke/items/cf8c026f243053829c0b)390view,4LGTM<br>**

**開発日数**
----------
**作業期間　2020年3月29日　〜 2020年4月26日<br>**
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

**雑食系サロン等を参考に、自身でマイルストーンを決めて開発作業を実施**
------------------------------
○ GitHubのイシュー＋プルリク活用<br>
○ twitter発信、Qiita投稿などのアウトプットを並行<br>
○ UI/UXを整える<br>
○ READMEを整える<br>
○ 実用的なデモデータ登録<br>
○ かんたんログイン機能実装<br>
○ CRUD(create,read,update,destroy)実装<br>
○ Google Maps API地図、マーカー、吹き出し機能実装<br>
○ データベース情報を取得しmap表示する機能実装<br>
○ ユーザーから管理者への問合せフォーム実装<br>
○ スマホビューで破綻しないレスポンシブデザイン実装<br>
○ スクラッチで最低限の装飾をする<br>
○ コードに綺麗にする・静的コードチェックアプリ活用<br>
○ テストを実施<br>
○ Capistrano理解活用<br>
○ nginx理解活用<br>
○ インフラにAWSサービス活用<br>
○ Docker（コンテナサービス）活用<br>
○ CI/CDパイプライン構築<br>

**言語・使用技術**
----------
**●フロント <br>**
&emsp;&emsp;Haml/scss/JavaScript<br>
**●バックエンド<br>**
&emsp;&emsp;ruby 2.5.1 <br>
&emsp;&emsp;Ruby on Rails 5.2.4.2<br>
**●サーバー<br>**
&emsp;&emsp;Docker web container<br>
**●データベース<br>**
&emsp;&emsp;Docker db container<br>
&emsp;&emsp;mysql Ver 14.14<br>
**●インフラ・仮想環境<br>**
&emsp;&emsp;Docker/docker-compose<br>
&emsp;&emsp;AWS（ECS,ECR,VPC,EC2,S3,Route 53） <br>
&emsp;&emsp;CircleCI（CI/CD)<br>
&emsp;&emsp;Capistrano3 <br>
**●テスト<br>**
&emsp;&emsp;RSpec, factory_bot<br> 
&emsp;&emsp;静的解析ツールRuboCop<br>

**連絡先**
----------
**坂上計介 サカガミケイスケ
&emsp;&emsp;Gmail /  iwayasunset@gmail.com**
