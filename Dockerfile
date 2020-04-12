 #Docker に対して ベースとなるイメージを指定する
FROM ruby:2.5.1

    #runはdockerイメージでコマンド実行　
    #Railsの起動に必要となるnodejsをインストールする
    #①updateで常に新しいinstallを担保してから　→②常にyesの-y指定
    #　→③ubuntuのbuild-essentialパッケージ → ③libpq-dev(PostgreSQLインタフェース?)
    #   →④nodejs  の順番でインストールする
    #　\ バックスラッシュでコードを改行（(\ はoption+¥)
RUN apt-get update && \
    apt-get install -y build-essential \
                              libpq-dev \
                              nodejs

    #NOMADCAFE というディレクトリ（場所）を作る＝ mkdir実行する(make directory)
    #ディレクトリ名は自由です
RUN mkdir /app_name

    #ENVは、コンテナ内で使える環境変数を設定
    #変数TEST_ROOTにNOMADCAFEディレクトリを代入
ENV TEST_ROOT /app_name

    #WORKDIR は、カレントディレクトリ（作業位置）を環境変数TEST_ROOT(mkdirした test)に移動する（cdコマンドと同じ）
WORKDIR /TEST_ROOT

    #ADDはローカル側のファイルをdockerイメージ側の指定したディレクトリに追加（コピー）する
    #ローカルのGemfileをTEST_ROOT/Gemfileにコピーする
    #ローカルのGemfile.lock をTEST_ROOT/Gemfile.lockにコピーする
copy Gemfile /TEST_ROOT/Gemfile
copy Gemfile.lock /TEST_ROOT/Gemfile.lock

    #TEST_ROOTでBundlerのインストール＝gem install bundler を実行する
    #TEST_ROOTでbundle install を実行する
    #TEST_ROOTに追加（コピー）する
RUN gem install bundler -v 1.3.0
RUN bundle install
ADD . /TEST_ROOT

