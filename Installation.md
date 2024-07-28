# Installation (macOS)

macOS 14 (Sonoma) 以降で GTKWave を使う場合は少し面倒な手順があったので、そちらの手順を追加したインストール手順です。もし質問がある場合は、このリポジトリで気軽にイシューを立ててご質問ください。

## 1. Install Icarus Verilog

```sh
$ brew install iverilog
```

## 2. Install GTKWave

最初にうまくいかない手順です。

```sh
$ brew install gtkwave
```

これをそのまま実行すると、GTKWave は正常にインストールされます。しかし、GTKWave をターミナルから `$ gtkwave ` で実行すると以下のようなダイアログが表示され、アプリケーションを使うことができません。そこで、https://github.com/gtkwave/gtkwave/issues/250 に書いてあるようなワークアラウンドを使って、回避します。

![](./images/udpate%20required-dialog.png)


### 1. ワークアラウンドを含んだ Formula を Tap する
```sh
$ brew tap randomplum/homebrew-gtkwave
```

`brew tap <user/repo>` を使うことで、公式の Formula 以外を使うことができます。

### 2. tap した Formula を使ってインストール

```sh
$ brew install --HEAD randomplum/gtkwave/gtkwave
```

`--HAED` をつけることで Formula 内で定義したブランチの最新コミットをとってくる。今回使っている Formula では以下のように記述しているので、`master` を指定している。

```ruby
  head "https://github.com/randomplum/gtkwave.git", branch: "master"
```

なんで master の最新コミットから取ってくる必要性があるのかはよくわかっていないので、https://github.com/gtkwave/gtkwave/issues/250 を読むとわかるかもしれない。

### 3. 実行できるのか確認

ターミナルからアプリケーションが実行されるか確認する。

```sh
$ gtkwave
```