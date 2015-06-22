module Users
  class Create
    include SimpleInteraction
    fail_with 'ErrorClass'

    requires :params

  end
end
