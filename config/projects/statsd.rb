
name "statsd"
maintainer "f440"
homepage "https://github.com/f440/omnibus-statsd"

install_path    "/opt/statsd"
build_version   "0.6.0"
build_iteration 1

# creates required build directories
dependency "preparation"

# statsd dependencies/components
# dependency "somedep"
dependency "node"
dependency "statsd"

# version manifest file
# dependency "version-manifest"

exclude "\.git*"
exclude "bundler\/git"
