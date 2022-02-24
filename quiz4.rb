# 
# enum とswitch文を使って、信号機を作ってみましょう！
# enumの値は、下記のようにする
# ・青
# ・黄
# ・赤
#
# 3回処理を回して、信号機が変わるように、青→黄→赤が表示されること
# enumが難しい場合は、配列でも可とする

module LightType
 GERRN = '緑'.freeze
 YELLOW = '黄'.freeze
 RED = '赤'.freeze
end
light_now = LightType::GERRN

4.times {|count|
    case light_now
    when LightType::GERRN then
        puts "緑\n"
        light_now = LightType::YELLOW
    when LightType::YELLOW  then
        puts "黄\n"
        light_now = LightType::RED
    when LightType::RED  then
        puts "赤\n"
        light_now = LightType::GERRN
    else
        puts "その他\n"
        light_now = LightType::GERRN
    end 

}

