#!/usr/bin/env bats

@test "hub installed" {
  run hub
  [ "$status" -eq 0 ]
}

@test "hub installed at /usr/local/bin/hub" {
  run which hub
  [ "${lines[0]}" = "/usr/local/bin/hub" ]
}
