include Java
$CLASSPATH << 'lib'

Hanoi = JavaUtilities.get_proxy_class('com.example.Hanoi')

[25, 26, 27, 28, 29, 30, 31, 32].each do |plate|
  start = Time.now
  Hanoi.doTowers(plate, 'A'.to_java.toCharArray[0], 'B'.to_java.toCharArray[0], 'C'.to_java.toCharArray[0])
  p Time.now - start
end
