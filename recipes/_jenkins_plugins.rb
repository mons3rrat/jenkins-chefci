node['jenkins_chefci']['jenkins_plugins'].each_with_index do |plugin_with_version, index|
  plugin, version = plugin_with_version.split(':')
  jenkins_plugin plugin do
    version version
    install_deps false
  end
end

# we want to restart Jenkins if any plugin changed
file File.join(node['jenkins']['master']['home'], 'jenkins-plugins-last-state') do
  content node['jenkins_chefci']['jenkins_plugins'].map{|k,v| "#{k}:#{v}"}.sort.join("\n")
  notifies :execute, 'jenkins_command[safe-restart]', :immediately
end
