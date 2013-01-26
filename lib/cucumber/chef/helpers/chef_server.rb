################################################################################
#
#      Author: Stephen Nelson-Smith <stephen@atalanta-systems.com>
#      Author: Zachary Patten <zachary@jovelabs.com>
#   Copyright: Copyright (c) 2011-2013 Atalanta Systems Ltd
#     License: Apache License, Version 2.0
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
################################################################################

module Cucumber::Chef::Helpers::ChefServer

################################################################################

  def chef_server_node_destroy(name)
    (::Chef::Node.load(name).destroy rescue nil)
    logger.info { "Destroyed chef node '#{name}'." }
  end

################################################################################

  def chef_server_client_destroy(name)
    (::Chef::ApiClient.load(name).destroy rescue nil)
    logger.info { "Destroyed chef client '#{name}'." }
  end

################################################################################

end

################################################################################
