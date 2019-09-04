import io
from requests_html import HTMLSession
import pandas as pd
import xlwings as xw

def GetText():
	url="https://zh.wiktionary.org/zh-hant/User:Wihwang/%E5%8F%A4%E6%BC%A2%E8%AA%9E%E5%B8%B8%E7%94%A8%E5%AD%97%E5%AD%97%E5%85%B8";
	session = HTMLSession()
	req = session.get(url)
	html =req.html 
	content_text = html.find("div#mw-content-text", first=True).text.replace(' ','\n').replace(';',';\n')

	with open(f'characterDict.txt', 'w', encoding='utf-8') as f:
		f.write(content_text)

def InitData():
	data = {}
	with open(f'characterDict.txt', 'r', encoding='utf-8') as f:
		text_list = f.read().split("\n\n")
	for x in text_list:
		data.update({x[0]:x})
	return pd.Series(data)

dic = InitData()
xw.books.active.sheets.active.range("A1").value = dic



