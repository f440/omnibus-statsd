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

name "node"
version "0.10.5"

source :url => "http://nodejs.org/dist/v0.10.5/node-v0.10.5-linux-x64.tar.gz",
       :md5 => "fb65723d395c559393201dd41e0eb275"

relative_path "node-v0.10.5-linux-x64"

build do
  command "rsync -av . #{install_dir}/embedded/"
end
