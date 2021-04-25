import scrapy
from bs4 import BeautifulSoup
from scrapy.spiders import CrawlSpider, Rule
import re


class SpiderSpider(scrapy.Spider):
    name = 'novel'
    allowed_domains = ['harrypotter.fandom.com']
    start_urls = ['https://harrypotter.fandom.com/wiki/Grawp']

    def parse(self, response):
        soup = BeautifulSoup(response.text, 'lxml')
        bio = {}

        sections = soup.find_all('aside')[0].find_all('section')
        bio['id'] = '63'
        bio['name'] = sections[0].text.strip()

        for s in sections[1:]:

            if s.find_all('h2') != []:

                s_name = s.find_all('h2')[0].text
                
                entries = s.find_all(
                    'div', {'class': 'pi-item pi-data pi-item-spacing pi-border-color'})

                for e in entries:
                    predicate = e.h3.text

                    if e.find_all('li') == []:
                        value = re.sub('\[\d+\]', '', e.div.text)
                    else:
                        value = [re.sub('\[\d+\]', '', l.text)
                                 for l in e.find_all('li')]

                    bio[predicate] = value
                

                # print('-----------------------------------------------------------------------------------------------')
        yield bio
