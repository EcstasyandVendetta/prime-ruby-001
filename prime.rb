# Add  code here!
def test(max)
  primes = (0..max).to_a

primes[0] = primes[1] = nil

count = 0
primes.each do |p|
  next unless p
  break if p*p > max
  count += 1
  (p*p).step(max,p) { |m| primes[m] = nil }
end

  puts "Solved for #{max} in #{count} steps."
  primes.compact
end

  def prime?(num)
    test(num).include?(num)
  end