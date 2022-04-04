from agent.agent import Agent
from stateHandler import state

statehandler = state()
print("Starting")
state = statehandler.state
statehandler.preeprocessor()
print("creating agent")
agent = Agent(alpha=0.001, beta=0.001,
              input_dims=state, tau=0.005,
               batch_size=100, layer1_size=400, layer2_size=300,
                 n_actions=3)
print("starting")
while True:
    action = agent.choose_action(state)
    print(action)
