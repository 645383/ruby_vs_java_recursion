class HanoiRb
  def do_towers(top_n, from, inter, to)
    if top_n == 1
      # p "Disk #{top_n} from #{from} to #{to}"
    else
      do_towers(top_n - 1, from, to, inter)
      # p "Disk #{top_n} from #{from} to #{to}"
      do_towers(top_n - 1, inter, from, to)
    end
  end
end

[25, 26, 27, 28, 29, 30, 31, 32].each do |plate|
  start = Time.now
  HanoiRb.new.do_towers plate, 'A', 'B', 'C'
  p Time.now - start
end