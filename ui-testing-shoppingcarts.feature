Feature: Add Product to Cart and Clear Cart

Background:
  * configure driver = { type: 'chrome' }
  
Scenario: [C1] Add product into cart and clear the cart
    Given driver 'http://localhost:3000'
    And waitFor('#root')
    When def elementXPath = '//*[@id="root"]/main/div/div[2]/div[2]/div[1]/p'
    And def buttonXPath = '//*[@id="root"]/main/div/div[2]/div[2]/div[1]/div/button'
    And def checkoutXPath = '//*[@id="root"]/main/div/div[2]/div[2]/div/div/button[1]'
    And script('document.evaluate(`' + elementXPath + '`, document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click()')
    And script('document.evaluate(`' + buttonXPath + '`, document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click()')
    And driver 'http://localhost:3000/cart'
    And waitFor('#root')
    And def cartButtonXPath = '//*[@id="root"]/main/div/div[2]/div[1]/div[1]/div/div/div[4]/button[1]'
    ##creating a variable to clear the cart    
    And def clearbuttonXPath2 = '//*[@id="root"]/main/div/div[2]/div[2]/div/div/button[2]'
    And script('document.evaluate(`' + cartButtonXPath + '`, document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click()')
    ###Clicking the clear button from cart page
    And script('document.evaluate(`' + clearbuttonXPath2 + '`, document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click()')
  #   And script('document.evaluate(`' + addXPath + '`, document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click()')

