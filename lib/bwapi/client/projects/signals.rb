require 'bwapi/client/projects/signals/groups'

module BWAPI
  class Client
    module Projects
      # Signals module for projects/signals endpoints
      module Signals
        include BWAPI::Client::Projects::Signals::Groups
      end
    end
  end
end
