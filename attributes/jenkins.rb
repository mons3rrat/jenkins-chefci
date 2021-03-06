#<> Install WAR on Debian <= 8, default to package otherwise
default['jenkins']['master']['install_method'] = 'war' if node['platform'] == 'debian' && node['platform_version'].to_i <= 8

#<> Disable Jenkins 2.0 setup wizard - currently until this is fixed: https://github.com/chef-cookbooks/jenkins/pull/471
default['jenkins']['master']['jvm_options'] = '-Djenkins.install.runSetupWizard=false'

#<> Where the private key for chef-client to communicate with Jenkins is stored on disk.
default['jenkins_chefci']['jenkins_private_key_path'] = '/etc/chef-jenkins-api.key'

#<> List of plugins to install
# Plugins:
# Retrieve this list via Jenkins Script console:
#
# Jenkins.instance.pluginManager.plugins.sort().each{ plugin -> println ("  ${plugin.getShortName()}:${plugin.getVersion()}") }
#
default['jenkins_chefci']['jenkins_plugins'] = %w(
  ace-editor:1.1
  analysis-collector:1.50
  analysis-core:1.86
  ansicolor:0.5.0
  ant:1.4
  antisamy-markup-formatter:1.5
  authentication-tokens:1.3
  blueocean:1.0.1
  blueocean-autofavorite:0.6
  blueocean-commons:1.0.1
  blueocean-config:1.0.1
  blueocean-dashboard:1.0.1
  blueocean-display-url:1.5.1
  blueocean-events:1.0.1
  blueocean-git-pipeline:1.0.1
  blueocean-github-pipeline:1.0.1
  blueocean-i18n:1.0.1
  blueocean-jwt:1.0.1
  blueocean-personalization:1.0.1
  blueocean-pipeline-api-impl:1.0.1
  blueocean-pipeline-editor:0.2.0
  blueocean-rest:1.0.1
  blueocean-rest-impl:1.0.1
  blueocean-web:1.0.1
  bouncycastle-api:2.16.1
  branch-api:2.0.8
  buildtriggerbadge:2.8.1
  clone-workspace-scm:0.6
  cloudbees-folder:6.0.3
  credentials:2.1.13
  credentials-binding:1.11
  display-url-api:1.1.1
  docker-commons:1.6
  docker-workflow:1.10
  durable-task:1.13
  embeddable-build-status:1.9
  external-monitor-job:1.7
  favorite:2.0.4
  gerrit-trigger:2.23.1
  git:3.2.0
  git-client:2.4.1
  git-server:1.7
  github:1.26.2
  github-api:1.85
  github-branch-source:2.0.5
  github-oauth:0.25
  github-organization-folder:1.6
  greenballs:1.15
  handlebars:1.1.1
  icon-shim:2.0.3
  jackson2-api:2.7.3
  javadoc:1.4
  job-dsl:1.60
  jquery-detached:1.2.1
  junit:1.20
  ldap:1.14
  mailer:1.20
  matrix-auth:1.5
  matrix-project:1.9
  maven-plugin:2.15.1
  metrics:3.1.2.9
  momentjs:1.1.1
  pam-auth:1.3
  pipeline-build-step:2.5
  pipeline-github-lib:1.0
  pipeline-graph-analysis:1.3
  pipeline-input-step:2.5
  pipeline-milestone-step:1.3.1
  pipeline-model-api:1.1.2
  pipeline-model-declarative-agent:1.1.1
  pipeline-model-definition:1.1.2
  pipeline-model-extensions:1.1.2
  pipeline-rest-api:2.6
  pipeline-stage-step:2.2
  pipeline-stage-tags-metadata:1.1.2
  pipeline-stage-view:2.6
  piwikanalytics:1.2.0
  plain-credentials:1.4
  PrioritySorter:3.5.0
  pubsub-light:1.7
  scm-api:2.1.1
  script-security:1.27
  slack:2.2
  sse-gateway:1.15
  ssh-credentials:1.13
  structs:1.6
  token-macro:2.1
  variant:1.1
  warnings:4.62
  windows-slaves:1.3.1
  workflow-aggregator:2.5
  workflow-api:2.12
  workflow-basic-steps:2.4
  workflow-cps:2.29
  workflow-cps-global-lib:2.7
  workflow-durable-task-step:2.10
  workflow-job:2.10
  workflow-multibranch:2.14
  workflow-scm-step:2.4
  workflow-step-api:2.9
  workflow-support:2.14
)
