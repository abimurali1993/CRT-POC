*** Settings ***
Library                   QForce
Library                   QWeb

*** Variables ***
${BROWSER}                edge
${username}               istautomation_csr@attone.com
${password}               Secret#12
${login_url}              https://attone--accint.sandbox.my.salesforce.com           
${InteractionType}        Inboundd

*** Keywords ***
Setup Browser
    Set Library Search Order                          QForce    QWeb
    Open Browser          about:blank                 ${BROWSER}
    SetConfig             LineBreak                   ${EMPTY}               #\ue000
    SetConfig             DefaultTimeout              20s                    #sometimes salesforce is slow
    Evaluate              random.seed()               random                 # initialize random generator

End suite
    Close All Browsers

Login
    GoTo                  ${login_url}
    TypeText              Username                    ${username}             delay=1
    TypeText              Password                    ${password}
    ClickText             Log In to Sandbox