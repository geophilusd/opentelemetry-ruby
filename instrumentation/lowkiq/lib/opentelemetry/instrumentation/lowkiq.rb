# frozen_string_literal: true

# Copyright The OpenTelemetry Authors
#
# SPDX-License-Identifier: Apache-2.0

require 'opentelemetry'
require 'opentelemetry-instrumentation-base'

module OpenTelemetry
  module Instrumentation
    # Contains the OpenTelemetry instrumentation for the Lowkiq gem
    module Lowkiq
    end
  end
end

require_relative './lowkiq/instrumentation'
require_relative './lowkiq/version'
require 'opentelemetry/common'
