from components.Node import node

class ConstValue(node):

    def __init__(self, Type, size):
        super().__init__(Type)
        self.size = size
        self.G = list()
        self.output = list()

        
        

    def calculate_output(self):
        pass
    def connect_input(self, const):
        self.output = const


    def __str__(self):
        return super().__str__()


    


