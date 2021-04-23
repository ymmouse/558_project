import scrapy
from bs4 import BeautifulSoup
from scrapy.spiders import CrawlSpider, Rule
import re

class SpiderSpider(scrapy.Spider):
    name = 'person'
    allowed_domains = ['harrypotter.fandom.com']
    start_urls = ['https://harrypotter.fandom.com/wiki/Death_Eaters']

    def parse(self, response):
        soup = BeautifulSoup(response.text, 'lxml')

        table = soup.find_all('table', {'class': 'wikitable'})[0]

        all_members = table.find_all('tr')[1:]

        for member in all_members:
            member_val = member.find_all('td')[0]

            url = member_val.a['href']

            yield scrapy.Request(
                'https://harrypotter.fandom.com' + url,
                callback = self.parse_one
            )
        
        yield scrapy.Request (
            'https://harrypotter.fandom.com/wiki/Tom_Riddle',
            callback = self.parse_one
        )
    def parse_one(self, response):
        soup = BeautifulSoup(response.text, 'lxml')
        bio = {}

        sections = soup.find_all('aside')[0].find_all('section')
        bio['name'] = sections[0].text.strip()

        for s in sections[1:]:

            if s.find_all('h2') != []:

                s_name = s.find_all('h2')[0].text
                bio[s_name] = {}

                entries = s.find_all ('div',{ 'class': 'pi-item pi-data pi-item-spacing pi-border-color'})

                for e in entries:
                    predicate = e.h3.text

                    if e.find_all('li') == []:
                        value = re.sub('\[\d+\]','',e.div.text)
                    else:
                        value = [re.sub('\[\d+\]','',l.text) for l in e.find_all('li')]

                    bio[s_name][predicate] = value
                #print('-----------------------------------------------------------------------------------------------')
        yield bio