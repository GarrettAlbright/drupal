# encoding: utf-8
name 'nmd-drupal'
maintainer 'New Media Denver'
maintainer_email 'support@newmediadenver.com'
license 'Apache 2.0'
description 'Installs/Configures nmd-drupal'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '3.0.0'
supports 'ubuntu', '>= 12.04'
supports 'centos', '>= 6.0'

desc = 'Manages Drupal.'
description desc

depends 'git'

long_description 'Manages the installation and configuration of Drupal.'
recipe 'nmd-drupal::default', desc
recipe 'nmd-drupal::files', 'Manages files'

grouping 'nmd-drupal/drush',
         title: 'Drush attributes',
         description: 'Drush recipe attributes'

attribute 'nmd-drupal/drush/revision',
          display_name: '[:drupal][:drush][:revision]',
          description: 'This is the version of drush to install.',
          type: 'string',
          required: 'recommended',
          recipes: ['nmd-drupal::drush'],
          default: '6.3.0'

attribute 'nmd-drupal/drush/repository',
          display_name: '[:drupal][:drush][:repository]',
          description: 'This is the code repository to reference.',
          type: 'string',
          required: 'recommended',
          recipes: ['nmd-drupal::drush'],
          default: 'https://github.com/drush-ops/drush.git'

attribute 'nmd-drupal/drush/dir',
          display_name: '[:drupal][:drush][:dir]',
          description: 'This folder stores the clone repository.',
          type: 'string',
          required: 'recommended',
          recipes: ['nmd-drupal::drush'],
          default: '/opt/drush'

attribute 'nmd-drupal/drush/executable',
          display_name: '[:drupal][:drush][:executable]',
          description: 'This is the symlinked file to the drush binary.',
          type: 'string',
          required: 'recommended',
          recipes: ['nmd-drupal::drush'],
          default: '/usr/bin/drush'

attribute 'nmd-drupal/drush/owner',
          display_name: '[:drupal][:drush][:owner]',
          description: 'This is owner of the executable binary.',
          type: 'string',
          required: 'recommended',
          recipes: ['nmd-drupal::drush'],
          default: 'root'

attribute 'nmd-drupal/drush/group',
          display_name: '[:drupal][:drush][:group]',
          description: 'This is group of the executable binary.',
          type: 'string',
          required: 'recommended',
          recipes: ['nmd-drupal::drush'],
          default: 'root'

attribute 'nmd-drupal/drush/mode',
          display_name: '[:drupal][:drush][:mode]',
          description: 'This is permissions of the executable binary.',
          type: 'string',
          required: 'recommended',
          recipes: ['nmd-drupal::drush'],
          default: '755'

attribute 'nmd-drupal/drush/state',
          display_name: '[:drupal][:drush][:state]',
          description: 'Controls runtime action: install, update, or purge',
          type: 'string',
          required: 'recommended',
          recipes: ['nmd-drupal::drush'],
          default: 'install'

grouping 'nmd-drupal/files',
         title: 'Files attributes',
         description: 'Files recipe attributes'

attribute 'drupal/files/path',
          display_name: '[:drupal][:files][:path]',
          description: 'This is the root level files directory path.',
          type: 'string',
          required: 'recommended',
          recipes: ['nmd-drupal::files'],
          default: '/default/files'

attribute 'drupal/files/owner',
          display_name: '[:drupal][:files][:owner]',
          description: 'This is the root level files directory owner.',
          type: 'string',
          required: 'recommended',
          recipes: ['nmd-drupal::files'],
          default: 'root'

attribute 'drupal/files/group',
          display_name: '[:drupal][:files][:path]',
          description: 'This is the root level files directory path group owner
          .',
          type: 'string',
          required: 'recommended',
          recipes: ['nmd-drupal::files'],
          default: 'root'

attribute 'drupal/files/mode',
          display_name: '[:drupal][:files][:mode]',
          description: 'This is the root level files directory mode.',
          type: 'string',
          required: 'recommended',
          recipes: ['nmd-drupal::files'],
          default: '0755'
