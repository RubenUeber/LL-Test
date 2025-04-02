*** Settings ***
Documentation        Creating a product in the system

Library    Browser



*** Variables ***
${headless}         False
${url}              https://ruben-1.localline.ca/backoffice/products/availability


*** Keywords ***

the user accesses the product creation page
    Sleep    2
    New Page    ${url}    
    # Browser.Click    id=["sidebar-layout"]