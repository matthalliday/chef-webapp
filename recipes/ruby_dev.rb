# Install Ruby and Gems
rbenv_ruby "2.0.0-p247"
rbenv_global "2.0.0-p247"

rbenv_gem "bundler" do
  rbenv_version "2.0.0-p247"
end

rbenv_gem "rails" do
  rbenv_version "2.0.0-p247"
end

package "nodejs"
package "libsqlite3-dev"