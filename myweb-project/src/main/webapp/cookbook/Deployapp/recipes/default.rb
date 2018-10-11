#
# Cookbook Name:: learn_chef_apache2
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

#apt_update 'Update the apt cache daily' do
#  frequency 86_400
#  action :periodic
#end

webserver = node['deployapp']['webserver']

package webserver

if webserver == 'apache2'
execute "Deloy Application to Apache webserver" do
command     "cp -r /home/ubuntu2/Nexusfiles/Realtime/ /var/www/html"
end
end

if webserver == 'tomcat7'
execute "Deloy Application to Tomcat webserver" do
command     "cp -r /home/ubuntu2/Nexusfiles/Realtime/ /var/lib/tomcat7/webapps"
end
end

service webserver do
  supports :status => true
  #action [:enable, :restart]
  action [:enable, :restart]
end

#template '/var/www/html/index.html' do
#  source 'index.html.erb'
#end

#remote_file '/var/www/html/sample.jar' do
#  source 'https://artifacts.alfresco.com/nexus/content/groups/public/ORG/springframework/spring-context/4.1.7.RELEASE/spring-context-4.1.7.RELEASE.jar'
#end
