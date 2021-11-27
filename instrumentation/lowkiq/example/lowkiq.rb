# frozen_string_literal: true

require 'rubygems'
require 'bundler/setup'

Bundler.require

OpenTelemetry::SDK.configure do |c|
  c.use 'OpenTelemetry::Instrumentation::Lowkiq'
end

# A basic Lowkiq job worker example
module SampleWorker
  extend Lowkiq::Worker

  def self.perform(payloads_by_id)
    # payloads_by_id is a hash map
    payloads_by_id.each do |id, payloads|
      # payloads are sorted by score, from old to new (min to max)
      payloads.each do |payload|
        puts "Running Lowkiq worker"
      end
    end
  end
end

Lowkiq.workers = [ SampleWorker ]

SampleWorker.perform_async([{ id: 'sample_worker', payload: {}, score: Time.now.to_f }])
