import scrapy
from bs4 import BeautifulSoup
from scrapy.spiders import CrawlSpider, Rule
import re
import csv
from scrapy.http import Request

uniersal_i = 0

class SpiderSpider(scrapy.Spider):
    name = 'novel'
    allowed_domains = ['harrypotter.fandom.com']
    start_urls = []

    characters = []
    with open('characters.csv') as f:
        csv_reader = csv.DictReader(f)
        for row in csv_reader:

            idx = row['id']
            
            token = row['name'].replace(' ','+')
            link = 'https://harrypotter.fandom.com/wiki/Special:Search?query=' + token + '&scope=internal&navigationSearch=true'
            
            characters.append((idx,link))
        
    def start_requests(self):
        for row in self.characters:
            self.start_urls.append(row[1])
            yield self.make_requests_from_url(row[1], {'id': row[0]})

    def make_requests_from_url(self, url, meta):
       return Request(url, callback=self.parse, dont_filter=True, meta=meta)

    def parse(self, response):
        soup = BeautifulSoup(response.text, 'lxml')


        item_index = response.meta['id']

        link = soup.find_all(
                    'li', {'class': 'unified-search__result'})[0].a['href']

        yield scrapy.Request(
            link,
            callback=self.parse_one,
            meta = {'id': item_index}
        )

    def parse_one(self, response):
        soup = BeautifulSoup(response.text, 'lxml')
        bio = {}

        sections = soup.find_all('aside')[0].find_all('section')
        bio['id'] = response.meta['id']
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
