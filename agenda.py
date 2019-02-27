import pymysql
# import selenium
import datetime
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.common.exceptions import NoSuchElementException

# Begin Database
host = "localhost"
port = 8889
user = "root"
password = "root"
db = "db_wartajazz"

conn = pymysql.connect(host, user, password, db, port)
cursor = conn.cursor()
# End Database

# Begin Selenium
browser = webdriver.Firefox()
browser.get('http://www.wartajazz.com/office/2018/09/01/agenda')

def getData():
    judulLinks = browser.find_elements_by_css_selector('.post-16670>ul>li')
    # print(judulLinks)
    for judulLink in judulLinks :
    	dataWartaJazz = judulLink.text
        dataSplit = dataWartaJazz.split('\n',3);
        date = dataSplit[0]
        eventName = dataSplit[1]
        now = datetime.datetime.now()
        data = (eventName,date,now,None)
        if not dataSplit:
            print('data is empty')
        else :
            sql = "INSERT INTO Events (event_name,date_start,date_create,user_id) VALUES (%s,%s,%s,%s)"
            cursor.execute(sql, data)
            conn.commit()
        

        # print(judul)
        # print(3)


# pages_remaining = True
getData()
# while pages_remaining:
#     try:
#         next_link = browser.find_element_by_xpath('//*[@id="paginga"]/div/a[text()="Next"]')
#         next_link.click()
#         getData()
#     except NoSuchElementException:
#         pages_remaining = False
browser.quit()
# # End Selenium
conn.close()