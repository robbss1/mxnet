#!/usr/bin/env bash

# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

# Install Thrust 1.9.8 to be shipped with Cuda 11.
# Fixes https://github.com/thrust/thrust/issues/1072 for Clang 10
# This file can be deleted when using Cuda 11 on CI

set -ex

apt-get update || true
apt-get install -y \
    openjdk-8-jdk \
    openjdk-8-jre \
    software-properties-common \
    scala \
    maven
