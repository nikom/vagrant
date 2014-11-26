class my_artifact_server {
	
#config artfifactory
class { 'artifactory::config':
        version => '3.2.0',
        user => 'artifact',
        group => 'artifact',
        group => 8082,
        manage_java => true,
        java_package => 'openjdk-7-jdk'
      }


include artifactory

}