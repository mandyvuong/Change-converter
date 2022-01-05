# Change Converter

Given a number in pounds and pence, work out the most efficient way of breaking it down into notes and coins, e.g. 11.55 becomes ["£10", "£1", "50p", "5p"]

## Acceptance Criteria

```
change_generator.convert(7.42)
 => ["£5", "£1", "£1", "20p", "20p", "2p"]
change_generator.convert(40)
 => ["£20", "£20"]
change_generator.convert(16.30)
 => ["£10", "£5", "£1", "20p", "10p"]
change_generator.convert(19.99)
 => ["£10", "£5", "£1", "£1", "£1", "£1", "50p", "20p", "20p", "5p", "2p", "2p"]
change_generator.convert(76.81)
 => ["£50", "£20", "£5", "£1", "50p", "20p", "10p", "1p"]
```

**Notes and coins**

- Notes: 50, 20, 10, 5, 2, 1
- Coins: 1,2,5,10, 20, 50

Class Change_generator
Method conversion - hash or array of notes and coins
Method calculate_conversion
Method convert(amount)

| Input change_generator.convert(amount) | Output                                                                       | Description                              |
| -------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------- |
| 5                                      | ["£5"]                                                                       | returns 1 note in exact amount in pounds |
| 0.05                                   | ["5p"]                                                                       | retuns 1 coin in exact amount in pence   |
| 40                                     | ["£20", "£20"]                                                               | returns 2 notes in pounds only           |
| 0.40                                   | ["20p", "20p"]                                                               | returns 2 coins in pence only            |
| 7.42                                   | ["£5", "£1", "£1", "20p", "20p", "2p"]                                       | returns notes and coins                  |
| 16.30                                  | ["£10", "£5", "£1", "20p", "10p"]                                            |                                          |
| 19.99                                  | ["£10", "£5", "£1", "£1", "£1", "£1", "50p", "20p", "20p", "5p", "2p", "2p"] |                                          |
| 76.81                                  | ["£50", "£20", "£5", "£1", "50p", "20p", "10p", "1p"]                        |                                          |

## Notes

This is post Makers Academy where I returned to full-time employment and have limited time to code. I've given myself small coding challenges by completing TDD in Ruby from the Makers Academy process workshops challenges.

This challenge is in progress as I need to refactor
