#
# Copyright:: Copyright (c) 2013 f440
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

name "statsd"
version "0.6.0"

build do
  command "cd #{install_dir}/embedded && #{install_dir}/embedded/bin/npm install statsd@#{version}"
  command "printf \"#!#{install_dir}/embedded/bin/node\nrequire('../embedded/node_modules/statsd/stats.js');\" > #{install_dir}/bin/statsd"
  command "chmod 755 #{install_dir}/bin/statsd"
end
