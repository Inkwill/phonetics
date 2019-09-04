import numpy as np
import pandas as pd

class Dict(object):
	"""the dictionary about chinese phonetic"""
	def __init__(self, datapath):
		super(Dict, self).__init__()
		self.datapath = datapath
		self.data = pd.read_excel(datapath,'dict',index_col=None)

dic = Dict("_data_shunxing.xls")
print(dic.data.columns)
		
