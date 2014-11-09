class my_jenkins_server {
	include jenkins
        include jenkins::master
	package {'git':
		ensure => installed,
		}
 $wanted_plugins = ['credentials','ssh-credentials','git-client'
 ,'scm-api','git','jquery','parameterized-trigger','ws-cleanup','build-pipeline-plugin','clone-workspace-scm','jobConfigHistory','extreme-feedback']

 jenkins::plugin{$wanted_plugins:}

}

include my_jenkins_server

