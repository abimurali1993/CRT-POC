*** Settings ***

Library    String
Library    Process
Library    QForce
Library    QWeb
Library    QVision

Suite Setup    OpenBrowser    about:blank    edgeChromium
Suite Teardown         Close All Browsers

*** Test Cases ***
Demo Test Case
    GoTo    https://attone--accuat.sandbox.my.salesforce.com
    TypeText    Username    istautomation_csr@attone.com.accint
    TypeText    Password    Secret@12
    clic
    