using Revise
Revise.revise()

using Oxygen
using OxygenReviseTest: add_routes

servedebug(; host="127.0.0.1", port=8001, revise_callbacks=[add_routes])
