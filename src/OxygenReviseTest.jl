module OxygenReviseTest

using Oxygen

function index()
    return "Changing this works"
end

function add_routes()
    @info "rerunning add_routes"
    Oxygen.clear_routes()

    @get "/" index

    @get "/but/" function()
        return "Changing this does not"
    end
end

function __init__()
    add_routes()
end

end
