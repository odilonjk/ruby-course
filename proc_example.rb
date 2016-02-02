# A project using Proc.
# Only 16+ years old can enter the party!

queue = [15,22,35,26,27,22,18,19,14,30,32,16,18,29,22,15,16]
over_16 = Proc.new { |age| age >= 16 }

can_enter = queue.select(&over_16)
