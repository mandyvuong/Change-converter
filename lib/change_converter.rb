class ChangeConverter

  def initialize
    @change = []
  end

  def convert(amount)
    calculate(amount)
    @change
  end

  private

  def calculate(amount)
    amount = (amount * 100).ceil
    conversion_unit.each do |key, value|
      if amount / key >= 1
        i = 1
        while i <= amount / key
          @change << value
          i += 1
        end
        amount -= key * (amount / key)
      end
    end
  end

  def conversion_unit
    {
      5000 => '£50',
      2000 => '£20',
      1000 => '£10',
      500 => '£5',
      100 => '£1',
      50 => '50p',
      20 => '20p',
      10 => '10p',
      5 => '5p',
      2 => '2p',
      1 => '1p'
    }
  end
end
