# frozen_string_literal: true

module Circler
  class ProjectsCommand < BaseCommand
    class << self
      def run(options)
        setup_token
        say ProjectPrinter.new(Project.all, pretty: should_be_pretty(options))
      end
    end
  end
end
