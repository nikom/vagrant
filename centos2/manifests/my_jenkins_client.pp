class my_jenkins_client {
	#include jenkins
	#include jenkins::slave
	# package {'git':
	# 	ensure => installed,
	# 	}
 # $wanted_plugins = ['credentials','ssh-credentials','git-client'
 # ,'scm-api','git','jquery','parameterized-trigger','ws-cleanup','build-pipeline-plugin','clone-workspace-scm','jobConfigHistory','extreme-feedback']

 # jenkins::plugin{$wanted_plugins:}

 

}

class { 'jenkins::slave':
        masterurl => 'http://virtguest:8080',
        #ui_user => 'adminuser',
        #ui_pass => 'adminpass',
      }

include my_jenkins_client
include jenkins::slave
