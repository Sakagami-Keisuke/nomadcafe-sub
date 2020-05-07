#サーバ上でのアプリケーションソースコードがあるディレクトリを変数app_pathに入れる
#Railsのルートパスを求める　RAILS_ROOT/config/unicorn.rbに配置している場合
app_path = File.expand_path('../../', __FILE__)

# リクエストを受け付けレスポンスを生成するworker数（任意）
worker_processes 1

#Railsのルーティングなど参照するディレクトリを指定
working_directory app_path

#起動の際にプロセスidが書かれたファイルを生成
# 起動コマンドを実行するディレクトリを指定
pid "#{app_path}/tmp/pids/unicorn.pid"

#ポート番号を指定
# Nginxで使用する場合は以下の設定を行う。
# listen File.expand_path('../../tmp/sockets/unicorn.sock', __FILE__)
# どのポート番号のリクエストを受け付けるか(3000ポートは仮です)
listen 3000

#エラーのログを記録するファイルを指定
stderr_path "#{app_path}/log/unicorn.stderr.log"

#通常のログを記録するファイルを指定
stdout_path "#{app_path}/log/unicorn.stdout.log"

#Railsアプリケーションの応答を待つ上限時間を設定
timeout 60

# 基本的には`true`を指定する。Unicornの再起動時にダウンタイムなしで再起動が行われる。
preload_app true

# コメントアウトする方もいるようですが、わからないので残します
GC.respond_to?(:copy_on_write_friendly=) && GC.copy_on_write_friendly = true
check_client_connection false
run_once = true

# USR2シグナルを受けると古いプロセスを止める。
# 新プロセスを立ち上げて旧プロセスを停止できる設定
before_fork do |server, worker|
  defined?(ActiveRecord::Base) &&
    ActiveRecord::Base.connection.disconnect!

  if run_once
    run_once = false # prevent from firing again
  end

  old_pid = "#{server.config[:pid]}.oldbin"
  if File.exist?(old_pid) && server.pid != old_pid
    begin
      sig = (worker.nr + 1) >= server.worker_processes ? :QUIT : :TTOU
      Process.kill(sig, File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH => e
      logger.error e
    end
  end
end

after_fork do |_server, _worker|
  defined?(ActiveRecord::Base) && ActiveRecord::Base.establish_connection
end