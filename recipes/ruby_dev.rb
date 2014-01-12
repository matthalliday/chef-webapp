# Install Ruby and Gems
rbenv_ruby "2.1.0"
rbenv_global "2.1.0"

rbenv_gem "bundler" do
  rbenv_version "2.1.0"
end

rbenv_gem "rails" do
  rbenv_version "2.1.0"
end

package "nodejs"
package "libsqlite3-dev"
