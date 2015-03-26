# drupal-scripts

Shell scripts for Drupal.

All scripts should run from drupal site root_path.

Some scripts expects that contrib modules place in sites/all/modules

# Requirements
- Drush
- Drupal 7.x

# Install
- Copy all files to /usr/local/bin
- Copy drupal-scripts.conf.example to /etc/drupal-scripts.conf or ~/.drupal-scripts.conf
- Make all executable

# TODO
- [x] move shared code to drupal-scripts-init
- [ ] replace $(basename $PWD) to get_domain
- [ ] write docs
- [ ] write tests
