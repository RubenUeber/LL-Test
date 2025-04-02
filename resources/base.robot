*** Settings ***
Documentation        Creating a product in the system   

Library           Browser


Resource           ../resources/actions/01-Products/Create-a-product.robot


*** Variables ***

${headless}        False
${url}             https://ruben-1.localline.ca/backoffice/products/availability


*** Keywords ***
Start Session
    New Browser     browser=chromium    headless=false
    New Page        ${url} 
    

Ens Session
    Browser.Take Screenshot