module Users
  class Create
    def initialize(params, user: User, user_repository: UserRepository)
      @params = params
      @user = user
      @user_repository = user_repository
    end

    def call 
    end
  end
end