import scrapy


class SpiderSpider(scrapy.Spider):
    name = 'wands'
    allowed_domains = ['harrypotter.fandom.com/wiki/']
    start_urls = ['http://harrypotter.fandom.com/wiki/Wand']

    def parse(self, response):
        for i in range(2, 53):
            path = '//*[@id="mw-content-text"]/div/div[9]/div/table/tbody/tr[{}]/'.format(str(i))

            wand_owner = response.xpath(path + 'td[1]/p[1]/a/text()').get()
            wand_wood = response.xpath(path + 'td[2]/a/text()').get()
            wand_length = response.xpath(path + 'td[3]/text()').get()
            wand_core = response.xpath(path + 'td[4]/a/text()').get()
            wand_flexibility = response.xpath(path + 'td[5]/text()').get()

            yield {
                'wand_owner': wand_owner,
                'wand_wood': wand_wood,
                'wand_length': wand_length,
                'wand_core': wand_core,
                'wand_flexibility': wand_flexibility
            }

    