import time

from agent.agent import Agent
from stateHandler import Statehandler
from env import account
import numpy as np




def run():
    statehandler = Statehandler()
    print("Starting")
    state = statehandler.state
    statehandler.preeprocessor()
    print("creating agent")
    agent = Agent(alpha=0.001, beta=0.001,
              input_dims=[len(np.array(state).flatten())], tau=0.005,
              batch_size=100, layer1_size=400, layer2_size=300,
              n_actions=2)
    agent.load_models()
    acount = account(100000)
    print("starting")
    running = True
    while running:
            action = agent.choose_action(np.array(state).flatten())
            newstate = statehandler.newstate(acount.balanxe, acount.orderplace)
            reward, done= acount.step(statehandler.state, action)
            agent.remember(np.array(state).flatten(),action,reward,np.array(newstate).flatten(),done)
            agent.learn()
            state = newstate
            if done:
                agent.save_models()
                acount.save=False
            if acount.done:
                return done


while True:
    run()

