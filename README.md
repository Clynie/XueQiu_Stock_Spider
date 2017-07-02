# XueQiu_Stock_Spider
<br/>
### 雪球网股票数据Scrapy爬虫, 生成数据, 分析数据, 预测股价.
<br/>
**雪球网 => redis => Scrapy爬虫 => MongoDB => 分析数据 => 模块 => 股价**
<br/>
**设计流程:**

- 基于python 2.7, Redis和MongoDB, 使用Scrapy和Scrapy_redis以及mongo 模块.

- 开启mongod和redis-server服务, 然后使用scrapy crawl雪球网爬虫

- 打开scrapySpider/spider, python运行stock.py将stock_price的url列表发送给redis-server

- Scrapy爬虫将从redis-server里面读取urls, 然后下载web数据, 再把数据存档mongodb.

- 把股票爬取的基本信息, 再用python运行stock.py stock_price, 抓取股票价格信息.

- python运行stock.py model, 分析数据, 培养模型, 预测股价.
