#
# Copyright 2015 Chef Software, Inc.
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

include_attribute 'push-jobs'

override['push_jobs']['allow_unencrypted'] = true

case node['platform_family']
when 'windows'
  default['push_jobs']['package_url']      = 'https://opscode-private-chef.s3.amazonaws.com/windows/2008r2/x86_64/opscode-push-jobs-client-windows-1.1.5-1.windows.msi'
  default['push_jobs']['package_checksum'] = '411520e6a2e3038cd018ffacee0e76e37e7badd1aa84de03f5469c19e8d6c576'
when 'rhel'
  default['push_jobs']['package_url']      = 'https://packages.chef.io/stable/el/7/push-jobs-client-1.3.4-1.el7.x86_64.rpm'
  default['push_jobs']['package_checksum'] = '5c449530fcea87f6d8855a659fa7bb62376fad9a51171198fe4a2e0c9d3ba001'
end
