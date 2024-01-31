*** Settings ***

Library    String
Library    Process
Library    QForce
Library    QWeb
Library    QVision

Suite Setup    OpenBrowser    about:blank    chrome
Suite Teardown         Close All Browsers

*** Test Cases ***
Demo Test Case
    GoTo    https://attone--accint.sandbox.my.salesforce.com
    TypeText    Username    istautomation_csr@attone.com.accint
    TypeText    Password    Secret#12
    ClickText   Log In to Sandbox
    VerifyText              Customer Search
    ClickText    In-Person    anchor=*Interaction Type
    ClickText    Inbound    anchor=Customer Search
    ClickText    Search Customer
    TypeText    Account Number    114433781
    ClickText                     Search    anchor= Customer Account Search
    # ClickText    Search    anchor=InteractionI-0117761820
    ClickText    Search            partial_match=False

    QForce.VerifyText        Authentication Type            timeout=60
    PickList          Authentication Type   One-Time Pin (OTP)
    PickList          Contact Method    (***) **4-7480
    # DropDown     Authentication Type        One-Time Pin (OTP)  
    # PickList     Contact Method             \*@att.com    partial_match=False

    ClickText      Bypass

    ${count}=   GetPickListCount        Contact Method 
    