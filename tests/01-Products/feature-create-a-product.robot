*** Settings ***
Documentation        Creating a product in the system

Resource           ../../resources/base.robot
Resource           ../../resources/actions/01-Products/Create-a-product.robot


Test Setup           Start Session
Test Teardown        End Session

*** Test Cases ***
Test case 01 - Create a product
    [Tags]    smoke
    Given the user accesses the product creation page
    # When the user fills in the product details
    # And the user submits the product creation form
    # Then the product should be created successfully


*** Keywords ***

Given the user accesses the product creation page
    the user accesses the product creation page
# When the user fills in the product details
#     the user fills in the product details
# And the user submits the product creation form
#     the user submits the product creation form
# Then the product should be created successfully
#     the product should be created successfully

