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

        sections = soup.find_all(['h2','h3','p'])

        start = False
        relationships = {}
        curr_key = None
        first = True
        
        for s in sections:
            text = s.text

            if start:
                if s.name == 'h2':
                    break

                if s.name == 'h3':
                    if first:
                        first = False
                    else:
                        relationships[curr_key] = val
                    val = ''
                    curr_key = text
                else:
                    val += ' '
                    val += text.replace('"', "'")

            if text == 'Relationships':
                start = True

        name = soup.find_all('aside')[0].find_all('section')[0].text.strip()

        yield {name: relationships}
