load("@bazel_gazelle//:deps.bzl", "go_repository")

def go_dependencies():
    go_repository(
        name = "com_github_alecthomas_assert_v2",
        importpath = "github.com/alecthomas/assert/v2",
        sum = "h1:2Q9r3ki8+JYXvGsDyBXwH3LcJ+WK5D0gc5E8vS6K3D0=",
        version = "v2.11.0",
    )
    go_repository(
        name = "com_github_alecthomas_kong",
        importpath = "github.com/alecthomas/kong",
        sum = "h1:6aamvWBE/REnR/BCq10EcozmcpUPc5aGI1lPAWdB0EE=",
        version = "v1.8.1",
    )
    go_repository(
        name = "com_github_alecthomas_repr",
        importpath = "github.com/alecthomas/repr",
        sum = "h1:GhI2A8MACjfegCPVq9f1FLvIBS+DrQ2KQBFZP1iFzXc=",
        version = "v0.4.0",
    )
    go_repository(
        name = "com_github_coreos_go_systemd_v22",
        importpath = "github.com/coreos/go-systemd/v22",
        sum = "h1:RrqgGjYQKalulkV8NGVIfkXQf6YYmOyiJKk8iXXhfZs=",
        version = "v22.5.0",
    )
    go_repository(
        name = "com_github_godbus_dbus_v5",
        importpath = "github.com/godbus/dbus/v5",
        sum = "h1:9349emZab16e7zQvpmsbtjc18ykshndd8y2PG3sgJbA=",
        version = "v5.0.4",
    )
    go_repository(
        name = "com_github_hexops_gotextdiff",
        importpath = "github.com/hexops/gotextdiff",
        sum = "h1:gitA9+qJrrTCsiCl7+kh75nPqQt1cx4ZkudSTLoUqJM=",
        version = "v1.0.3",
    )
    go_repository(
        name = "com_github_mattn_go_colorable",
        importpath = "github.com/mattn/go-colorable",
        sum = "h1:fFA4WZxdEF4tXPZVKMLwD8oUnCTTo08duU7wxecdEvA=",
        version = "v0.1.13",
    )
    go_repository(
        name = "com_github_mattn_go_isatty",
        importpath = "github.com/mattn/go-isatty",
        sum = "h1:JITubQf0MOLdlGRuRq+jtsDlekdYPia9ZFsB8h/APPA=",
        version = "v0.0.19",
    )
    go_repository(
        name = "com_github_pkg_errors",
        importpath = "github.com/pkg/errors",
        sum = "h1:FEBLx1zS214owpjy7qsBeixbURkuhQAwrK5UwLGTwt4=",
        version = "v0.9.1",
    )
    go_repository(
        name = "com_github_rs_xid",
        importpath = "github.com/rs/xid",
        sum = "h1:mKX4bl4iPYJtEIxp6CYiUuLQ/8DYMoz0PUdtGgMFRVc=",
        version = "v1.5.0",
    )
    go_repository(
        name = "com_github_rs_zerolog",
        importpath = "github.com/rs/zerolog",
        sum = "h1:1cU2KZkvPxNyfgEmhHAz/1A9Bz+llsdYzklWFzgp0r8=",
        version = "v1.33.0",
    )
    go_repository(
        name = "org_golang_x_sys",
        importpath = "golang.org/x/sys",
        sum = "h1:CM0HF96J0hcLAwsHPJZjfdNzs0gftsLfgKt57wWHJ0o=",
        version = "v0.12.0",
    )
