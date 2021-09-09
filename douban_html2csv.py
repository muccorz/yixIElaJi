from bs4 import BeautifulSoup
import requests, re, time
import pandas as pd
with open("/Users/mucc/.spyder-py3/douban.html", "r") as f:
    file = BeautifulSoup(f.read(), "html.parser")
items = []
for i in file.findAll("div", class_ = "grid-view"):
    items += i.findAll("div", class_ = "item")
    
itemss = []
for item in items:
    try:
        itemss.append([item.find("em").get_text(),
                      item.find("span", class_ = "comment").get_text().replace(",", "，")])
    except AttributeError:
        itemss.append([item.find("em").get_text(),
                      " "])

results = pd.DataFrame(itemss, columns = ['标题', '评论'])

results.to_csv ('douban.csv', index = False, header=True)