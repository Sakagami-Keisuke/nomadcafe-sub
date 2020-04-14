
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
        #WORKDIR(ワークディレ)は、RUNやADDなどの命令実行するカレントディレクトリ
        #カレントディレクトリ（作業位置）をapp_nameに移動（cdコマンドと同じ）
WORKDIR /app_name
        #COPY(コピー)はローカル側のファイルをdockerイメージ側の指定したディレクトリにコピーする
        #ローカルのGemfileをapp_name/Gemfileにコピーする
        #ローカルのGemfile.lock をapp_name/Gemfile.lockにコピーする
        #docker-compose build 実行する前に、ローカルのGemfile.lock内を全削除しておきます（エラー対策）
COPY Gemfile /app_name/Gemfile
COPY Gemfile.lock /app_name/Gemfile.lock
        #gem install bundler -v 1.3.0のインストール を実行する
        #(注意)-v 1.3.0など指定しない場合、2系を自動インストールしてエラー地獄を引き起こします！（2020.4.12時点）
        #bundle install を実行する
        #TEST_ROOTに追加（コピー）する
RUN gem install bundler -v 1.3.0
RUN bundle install
        #ADD(アド)はローカル側のファイルをdockerイメージ側の指定したディレクトリに追加（コピー）する
        #ローカルの(.)カレントディレクトリをapp_nameディレクトリに追加（コピー+解凍）する
ADD . /app_name