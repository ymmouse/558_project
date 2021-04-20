import scrapy
from bs4 import BeautifulSoup
from scrapy.spiders import CrawlSpider, Rule
import re

class SpiderSpider(scrapy.Spider):
    name = 'person'
    allowed_domains = ['harrypotter.fandom.com']
    start_urls = ['https://harrypotter.fandom.com/wiki/Category:Gryffindors']
    #start_urls = ['https://harrypotter.fandom.com/wiki/Category:Hufflepuffs']
    #start_urls = ['https://harrypotter.fandom.com/wiki/Category:Ravenclaws']
    #start_urls = ['https://harrypotter.fandom.com/wiki/Category:Slytherins']

    def parse(self, response):
        soup = BeautifulSoup(response.text, 'lxml')

        all_members = soup.find_all('a', {'class': 'category-page__member-link'})

        for member in all_members:
            value = member.text
            path = member['href']

            if 'Template' in value:
                continue
            
            yield scrapy.Request(
                'https://harrypotter.fandom.com' + path,
                callback = self.parse_one
            )
            
        next_page = soup.find_all('div', {'class', 'category-page__pagination'})
        if len(next_page) > 0:
            for bottom in next_page:
                url = bottom.a['href']
                value = bottom.span.text

                if value == 'Next':
                    yield scrapy.Request(
                        url,
                        callback = self.parse
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
