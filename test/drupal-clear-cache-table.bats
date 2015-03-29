#!/usr/bin/env bats

@test "no arguments prints usage instructions" {
	run drupal-clear-cache-table
	[ $status -eq 1 ]
	[ $(expr "${lines[0]}" : "drupal-clear-cache-table") -ne 0 ]
}

@test "clear cache_form" {
	run drupal-clear-cache-table cache_form
	[ $status -eq 0 ]
}

@test "clear non-cache table" {
	run drupal-clear-cache-table node
	[ $status -eq 1 ]
}
