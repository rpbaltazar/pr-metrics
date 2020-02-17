module Web
  module Controllers
    module PullRequests
      class Index
        include Web::Action

        expose :pull_requests

        def call(params)
          @pull_requests = PullRequestRepository.new.all
        end
      end
    end
  end
end
