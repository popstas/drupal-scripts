#!/usr/bin/env bats

setup() {
    cp -ar .git .git_test
    drush dis -y yandex_metrics

    # TODO: rewrite
    #if [ "$(drupal-module-enabled -f yandex_metrics)" -eq 1 ]; then
    #    drupal-module-uninstall -y yandex_metrics
	#fi
}

teardown() {
    drush dis -y yandex_metrics
    rm -r .git
    mv .git_test .git
}


@test "enable and commit module" {
	run drupal-module-enable-add-git yandex_metrics >&2
	[ $status -eq 0 ]
	run sh -c "git log -n1 --oneline | head -n1"
	[ $(echo "$output" | grep -c "modules: yandex_metrics") -eq 1 ]
}

@test "enable and commit module with comment" {
	random_comment=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
	run drupal-module-enable-add-git yandex_metrics "$random_comment"
	[ $status -eq 0 ]
	run sh -c "git log -n1 --oneline | head -n1"
	[ $(echo "$output" | grep -c "modules: yandex_metrics, $random_comment") -eq 1 ]
}

@test "try to enable enabled module" {
	run drupal-module-enable-add-git node
	[ $status -eq 1 ]
	run sh -c "git log -n1 --oneline | head -n1"
	[ $(echo "$output" | grep -c "modules: node") -eq 0 ]
}