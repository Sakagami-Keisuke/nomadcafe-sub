
        #FROM(フロム)はDocker に対して ベースとなるRubyイメージを指定する
FROM ruby:2.5.1
        #run(ラン)はdocker-compose buildコマンドで実行される
        #Railsの起動に必要となるnodejsをインストールする
        #apt-getコマンドはUbuntuパッケージ管理システム＝APTライブラリを利用してパッケージ操作・管理するコマンド
        #①updateで常に新しいパッケージinstall →②-qqはエラー以外は表示しない →③常にyesの-y指定
        #→④ubuntuのbuild-essential(OS基礎開発パッケージ) → ⑤libpq-dev(OS開発パッケージ）
        #→⑥nodejs(サーバーサイドのJavaScript)  の順番でインストールする
        # \ バックスラッシュでコードを改行して見易くする       (\ はoption+¥です)
RUN apt-get update -qq && \
    apt-get install -y build-essential \
                                libpq-dev \
                                nodejs
        #今回はapp_nameという名前のディレクトリ（場所）を作ります
        #mkdir(メイクディレ)=(make directory)
        #ディレクトリ名は自由です
RUN mkdir /app_name
        #ENV(エンヴ)は、コンテナ内で使える環境変数を設定
        #変数TEST_ROOTにNOMADCAFEディレクトリを代入
        #Dockerfileに記載すると環境変数をイメージに焼き付けることになり、アクセストークンやパスワードなど流出すると危険な物は要注意です。
ENV TEST_ROOT /app_name
        #WORKDIR(ワークディレ)は、RUNやADDなどの命令実行するカレントディレクトリ
        #カレントディレクトリ（作業位置）を環境変数TEST_ROOT(mkdirした test)に移動（cdコマンドと同じ）
WORKDIR /TEST_ROOT
        #COPY(コピー)はローカル側のファイルをdockerイメージ側の指定したディレクトリにコピーする
        #ローカルのGemfileをTEST_ROOT/Gemfileにコピーする
        #ローカルのGemfile.lock をTEST_ROOT/Gemfile.lockにコピーする
        #docker-compose build 実行する前に、ローカルGemfile.lock内を全削除しておきます!
COPY Gemfile /TEST_ROOT/Gemfile
COPY Gemfile.lock /TEST_ROOT/Gemfile.lock
        #gem install bundler -v 1.3.0のインストール を実行する
        #(注意)-v 1.3.0など指定しない場合、2系を自動インストールしてエラー地獄を引き起こします！（2020.4.12時点）
        #bundle install を実行する
        #TEST_ROOTに追加（コピー）する
RUN gem install bundler -v 1.3.0
RUN bundle install
        #ADD(アド)はローカル側のファイルをdockerイメージ側の指定したディレクトリに追加（コピー）する
        #ローカルの(.)カレントディレクトリをTEST_ROOTディレクトリに追加（コピー+解凍）する
ADD . /TEST_ROOT