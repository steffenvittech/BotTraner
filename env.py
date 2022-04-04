import numpy as np


class account():
    def __init__(self,balance):
        self.balanxe = balance
        self.new_balance=0
        self.orderplace=0
        self.bought_price=0
        self.profit=0
        self.amount_purches=0
        self.buy_feed=0.5
        self.sell_feed=0.5
        self.done = False
        self.save=False




    def calulateProfit(self, sellingprice):

        buyfeed = 1-(self.buy_feed/100)
        sellfedd = 1-(self.sell_feed/100)
        a=self.bought_price/buyfeed

        self.profit = sellingprice-(a/sellfedd)



    def step(self, new_state, action):
        action = np.amax(action)
        new_data =new_state[-1]

        if self.orderplace==1:
            self.calulateProfit(new_data[2])
        else:
            self.profit=0

        if self.balanxe<0:
            self.done=True

        ## holde action
        if action ==0:
            if self.orderplace==1:
                return self.profit, False
            else:
                return -0.01, False
        else:
            if self.orderplace==0:
                ##buy
                self.orderplace=1
                self.bought_price=new_data[1]
                return 1, False
            else:
                self.orderplace=0
                self.balanxe+=self.profit
                self.save=True
                print("Balance {0} ".format(self.balanxe))
                return self.profit*2, True

