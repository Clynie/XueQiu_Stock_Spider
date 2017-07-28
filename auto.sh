nohup mongod --dbpath mongodb执行文件位置 &
nohup redis-server &
python scrapySpider/spiders/spider_feeder.py
scrapy crawl stockSpider
