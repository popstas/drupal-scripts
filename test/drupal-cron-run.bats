#!/usr/bin/env bats

@test "run cron without parameters" {
	run drs cron-run
	[ $status -eq 1 ]
}

@test "run cron with root_path" {
	run drs cron-run -s "$TEST_ROOT_PATH"
	[ $status -eq 0 ]
}

@test "run cron with root_path and command" {
	run drs cron-run "$TEST_ROOT_PATH" "st"
	echo >&2 "$output"
	[ $status -eq 0 ]
	[ $(echo "$output" | grep -c "http://$(basename "$PWD")") -eq 1 ]
}

@test "run cron with root_path, command and domain" {
	run drs cron-run "$TEST_ROOT_PATH" "st" "example.com"
	echo >&2 "$output"
	[ $status -eq 0 ]
	[ $(echo "$output" | grep -c "http://example.com") -eq 1 ]
}
