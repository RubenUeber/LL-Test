*** Settings ***
Documentation        Creating a product in the system   

Library           Browser
Library           RPA.Desktop

Resource           ../resources/actions/01-Products/Create-a-product.robot

*** Variables ***
${headless}         False
${url}              https://ruben-1.localline.ca/backoffice/products/availability


*** Keywords ***
Start Session

    New Browser    chromium    headless=${headless} 
    New Context    viewport={'width': 1366, 'height': 768} 
    New Page        ${url}
    Set Browser Timeout      40 s
    RPA.Desktop.Press Keys        cmd  up  
    Fill Text                  id=["login--email"]             test
    Fill Text                  id=["login--password"]           1234  
    Sleep    1 
    Browser.Click              css=button[type="submit"]
    Set Browser Timeout    30s  # Ajuste o tempo conforme necessário
    # ${elemento_visivel}=    Run Keyword And Return Status    Get Element    xpath=//span[contains(.,'Ok, entendi')]
    # Run Keyword If    ${elemento_visivel}    Browser.Click    xpath=//span[contains(.,'Ok, entendi')]
    


End Session
    Browser.Take Screenshot