# frozen_string_literal: true

# Copyright 2020 OpenTelemetry Authors
#
# SPDX-License-Identifier: Apache-2.0

module OpenTelemetry
  module Instrumentation
    module Lowkiq
      # The Instrumentation class contains logic to detect and install the Lowkiq
      # instrumentation
      class Instrumentation < OpenTelemetry::Instrumentation::Base
        install do |_config|
          require_dependencies
          add_server_middleware
        end

        present do
          defined?(::Lowkiq)
        end

        private

        def require_dependencies
          require_relative 'middlewares/server/tracer_middleware'
        end

        def add_server_middleware
          ::Lowkiq.server_middlewares << Middlewares::Server::TracerMiddleware
        end
      end
    end
  end
end
