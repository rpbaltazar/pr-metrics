require 'hanami/interactor'

class AddPullRequest
  include Hanami::Interactor

  expose :pull_request

  def initialize(repository: PullRequestRepository.new)
    @repository = repository
  end

  def call(pr_attributes)
    @pull_request = @repository.create(pr_attributes)
  end
end
