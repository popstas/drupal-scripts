#!/usr/bin/env bats

setup() {
    if [ "$(drupal-module-enabled -f devel)" != 1 ] \
	|| [ "$(drupal-module-enabled -f field_collection)" != 1 ] \
	|| [ "$(drupal-module-enabled -f field_collection_views)" != 1 ]
	then
        drush en -y devel field_collection field_collection_views
	fi
}

@test "list all undocs" {
	run drupal-modules-undoc
	modules_count=$(drupal-modules-enabled | wc -l)
	undoc_expected=$(( $modules_count - 5 ))
	[ $status -eq 0 ]
	[ $(echo "$output" | wc -l) = "$undoc_expected" ]
}
