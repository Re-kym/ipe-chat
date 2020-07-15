#問題1 終わった

# result = rand(9)  # 0～9の中からランダムで数字が選ばれたものを変数resultに格納してください

# input = ""    # ループの条件でユーザーからの入力値を使いたい場合はここで空の変数として先に定義しておく。

# # ユーザーの入力が答えと一致するまで処理を繰り返すループ文を書いてください
# while true # 以下ループ内処理
#     puts "0～9の数字を入力してください"
#     input = gets.chomp.to_i      # ユーザーから入力を受けましょう
    
#     break if input == result
    
#     if result < input
#         puts "#{input}より小さい"
    
#     else
#         puts "#{input}より大きい"
    
#     end
# end
# puts "正解"
# exit

   # ユーザーが入力した値と変数resultの値を比べた場合の条件分岐を書きましょう
    # もし正解だった場合は、アプリケーションが終了するようにしてください


#問題２ 終わった
# num = 1

# while num <= 50
#     if num % 3 == 0
#         puts "Aho"
#     elsif num.to_s.include?("3") ; "true"
#         puts "Aho"
#     else
#         puts num
#     end
#     num += 1
# end

#問題３　終わった

# def register_review(reviews)   # レビューを登録するメソッドを完成させてください。引数も利用しましょう。
#     puts "商品名を入力してください"
#     input_products = gets.chomp.to_s
#     # ユーザーの入力を受け付けてください
#     puts "感想を入力してください"
#     input_impressions = gets.chomp.to_s
#     # ユーザーの入力を受け付けてください

#     review = { name: input_products, review: input_impressions}    # ユーザーの入力をハッシュにまとめましょう
#     reviews << review    # ハッシュにしたものを、whileの前に定義したreviewsという配列に格納しましょう
# end

# def show_reviews(reviews)     # レビューを全て表示するメソッドを完成させてください。引数も利用しましょう。
#     reviews.each_with_index do |review, index| # ループを使ってレビューを全て表示させましょう。

#     # 下記のように表示されるようにしてください。
#     # 【】はコードに直してください
#     puts "----------------------------"
#     puts "商品名： #{review[:name]}"
#     puts "　感想： #{review[:review]}"
#     end

# end

# reviews = []
# while true do
#     puts "番号を入力してください"
#     puts "[1] レビューを登録する"
#     puts "[2] レビューの一覧を見る"
#     puts "[3] アプリを終了する。"

#     input = gets.to_i

#     case input
#     when 1
#         register_review(reviews)        # レビューを登録するメソッドを呼び出してください
#     when 2
#         show_reviews(reviews)        # レビュー一覧を表示するメソッドを呼び出してください
#     when 3
#         exit
#         # アプリケーションを終了する処理を書いてください

#     end
# end
