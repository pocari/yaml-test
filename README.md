yamlテスト

key, value形式のときにvalueが #から始まる場合コメント扱いになってvalueなし扱いになる。
valueの文字列の途中に# があってもそれ以降の文字列がむしされることなく文字列として扱われる
先頭が#の場合は文字列をクォートしないといけない

```
% cat main.rb
require 'pp'
require 'yaml'

puts File.read("./test.yml")
pp YAML.load(File.read('./test.yml'))
% ruby main.rb
dev:
  user: hoge
  pass: #hoge

stg:
  user: hoge
  pass: a#hoge

prd:
  user: hoge
  pass: "#hoge"

{"dev"=>{"user"=>"hoge", "pass"=>nil},
 "stg"=>{"user"=>"hoge", "pass"=>"a#hoge"},
 "prd"=>{"user"=>"hoge", "pass"=>"#hoge"}}
```
