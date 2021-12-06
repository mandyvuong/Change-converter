class Change_converter
  def convert(amount)
    amount > 1 ? ["£%.0f" % amount] : ["%.0fp" % (amount*100)]
  end
end