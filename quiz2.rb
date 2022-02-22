# 自動販売機で買い物した時に、おつりの枚数は何枚になるでしょうか？
# 【条件】最大入金金額は1000円とする。
# 下記は可変とする
# money = 1000(入金)
# product_price = 200(商品価格)

class VendingMachine
    @@sum_coins = 0 #合計コイン数
    @@balance = 0 #計算用

    def returnSumCoins(money, product_price)
        @@balance = money - product_price
        coins = [500,100,50,10,5,1]
        for coin in coins
            calculation(coin)
        end
        return @@sum_coins
    end

    def calculation(coin_price) 
        result = @@balance/coin_price
        @@balance = @@balance - (coin_price * result)
        @@sum_coins += result
    end

end

vending_machine = VendingMachine.new
puts vending_machine.returnSumCoins(1000,500)

