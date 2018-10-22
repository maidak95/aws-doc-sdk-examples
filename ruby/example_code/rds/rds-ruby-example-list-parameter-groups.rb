#snippet-comment:[These are tags for the AWS doc team's sample catalog. Do not remove.]
#snippet-sourceauthor:[Doug-AWS]
#snippet-sourcedescription:[Lists your RDS parameter groups.]
#snippet-keyword:[Amazon RDS]
#snippet-keyword:[db_parameter_groups method]
#snippet-keyword:[Ruby]
#snippet-service:[rds]
#snippet-sourcetype:[full-example]
#snippet-sourcedate:[2018-03-16]
# Copyright 2010-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# This file is licensed under the Apache License, Version 2.0 (the "License").
# You may not use this file except in compliance with the License. A copy of the
# License is located at
#
# http://aws.amazon.com/apache2.0/
#
# This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS
# OF ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'aws-sdk-rds'  # v2: require 'aws-sdk'

rds = Aws::RDS::Resource.new(region: 'us-west-2')
      
rds.db_parameter_groups.each do |p|
  puts p.db_parameter_group_name
  puts '  ' + p.description
end
