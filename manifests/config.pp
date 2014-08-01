#
class test_scope::config {
  file {'/tmp/test':
    content => template('test_scope/test.erb')
  }

}
