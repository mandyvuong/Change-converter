class ChangeConverter
  def conversion_unit
    {
      5000 => '£50',
      2000 => '£20',
      1000 => '£10',
      500 => '£5',
      # 200 => '£2',
      100 => '£1',
      50 => '50p',
      20 => '20p',
      10 => '10p',
      5 => '5p',
      2 => '2p',
      1 => '1p'
    }
  end

  def convert(amount)
    amount = (amount * 100).ceil
    change = []
    conversion_unit.each do |key, value|
      if amount / key >= 1
        i = 1
        while i <= amount/key
          change << value
          i += 1
        end
        p amount.to_i
        p amount.to_i/ key
        amount -= key * (amount.to_i/key).floor
        p amount
      end
    end
    change
  end
end
