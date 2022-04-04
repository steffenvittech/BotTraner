import psycopg2
from sklearn.preprocessing import StandardScaler


class Statehandler():
    def __init__(self, state_leng=120):
        self.conn = psycopg2.connect(
            host="mypostgres",
            port=5432,
            database="tradingdb",
            user="vitten",
            password="vitten")
        self.state =[]
        self.start_id=384
        self.scaler = StandardScaler()
        for i in range(0,state_leng):
            data = []
            for i in self.dataresive():
                for j in i:
                    data.append(j)
            data.append(0)
            data.append(0)
            data.append(0)
            self.state.append(data)


    def dataresive(self):
        self.cursor = self.conn.cursor()
        self.Query = "select ask,bid,volume,price,size from btc_tricker where id={};".format(self.start_id)
        self.cursor.execute(self.Query)
        data = self.cursor.fetchall()
        self.start_id+=1
        self.cursor.close()
        return data

    def preeprocessor(self):
        return self.scaler.fit_transform(self.state)


    def newstate(self, orderplace, profit, ):
        self.state.pop()
        data=[]
        for i in self.dataresive():
            for j in i:
                data.append(j)
        data.append(orderplace)
        data.append(profit)
        data.append(0)
        self.state.append(data)
        return self.preeprocessor()

