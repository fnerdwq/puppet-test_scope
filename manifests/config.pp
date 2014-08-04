#
class test_scope::config {

  file {"/tmp1/$testvalue":
    ensure => present
  }

  $testval_tmpl = inline_template('<%= @testvalue -%>')
  file {"/tmp2/$testval_tmpl":
    ensure => present
  }

  $testvalue= $test_scope::testvalue
  file {"/tmp3/$testvalue":
    ensure => present
  }

  file {'/tmp/test':
    content => template('test_scope/test.erb')
  }

}
