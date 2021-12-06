# frozen string literal comment.
class ChangeConverter
  def conversion_unit
    {
      5000 => '£50',
      2000 => '£20',
      1000 => '£10',
      500 => '£5',
      200 => '£2',
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
    amount *= 100
    change = []
    conversion_unit.each do |key, value|
      if amount / key >= 1
        change << value
        amount -= key
      end
    end
    change
  end
end
