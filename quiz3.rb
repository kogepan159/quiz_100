# 動物園の入場料を計算しましょう！
# 大人 250円
# 子供 100円
# (15人以上入るときは、団体割引で2割引とする)
# 条件として、Classを作って引数に、大人と子供の人数を持たせること

class ZooPark
    @@about_money = 250 #大人人数
    @@child_money = 100 #子供人数

    def fee(abouts, children)
        pay_money = @@about_money * abouts + @@child_money * children
        if abouts + children >= 15
            pay_money = pay_money * 0.8
        end
        return pay_money
    end
end

puts ZooPark.new.fee(10,5)

