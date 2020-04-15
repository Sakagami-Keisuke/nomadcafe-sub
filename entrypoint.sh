#!/bin/bash
set -e
        #シェルスクリプトオプション記法
        #実行したコマンドが0でないステータスで終了した場合、即座に終了するオプション。
bundle
        #rake rake db:migrateを実行してテーブルを更新して空にします。
rake db:migrate
        #rake db:seed_fuを実行してデモデータをテーブルに投入しておきます。
rake db:seed_fu
        #変数$@を書かないと、docker-compose upが止まります
exec "$@"