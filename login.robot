*** Settings ***
Library                     SeleniumLibrary
#step 1. buka browser dan open url
Test Setup                  Open Browser            ${base_url}      ${browser_type}
#step 6. close browser
Test Teardown               Close Browser

*** Variables ***
${base_url}                 https://pub-eish-dev.keponet.com/frontend/login
${browser_type}             chrome
${user}                     jenareishsatu@yopmail.com
${not_user}                 atikah@yopmail.com
${pass}                     12345678
${error_message}            Email yang dimasukkan atau password salah, silahkan cek input anda.
${invalid_user}             atikah	
${error_message_inv_mail}   The email must be a valid email address.	
${error_message_not_mail}   The selected email is invalid.				

*** Test Cases ***
I'm login with valid email and valid password
    #step 2. fullscreen valid window
    Maximize Browser Window
    #step 3. input email
    Input Text                      //input[@id="email"]                                    ${user}
    #step 4. input valid password
    Input Text                      //input[@id="password"]                                 ${pass}
    #step 5. Klik login
    Click Element                   //button[@type="submit"]
    #step 6.Validasi halaman dashboard
    Element Should Be Visible       //img[@id="menu-logo"]

I'm login with valid email and invalid password
    #step 2. fullscreen valid window
    Maximize Browser Window
    #step 3. input email
    Input Text                      //input[@id="email"]                                    ${user}
    #step 4. input invalid password
    Input Text                      //input[@id="password"]                                 salahpassword
    #step 5. Klik login
    Click Element                   //button[@type="submit"]
    #step 6.Validasi pesan error
    Element Should Contain          //div[@class="alert alert-danger text-danger"]          ${error_message} 

I'm login with email not registered and valid password
    #step 2. fullscreen valid window
    Maximize Browser Window
    #step 3. input not registered email
    Input Text                      //input[@id="email"]                                    ${not_user}
    #step 4. input valid password
    Input Text                      //input[@id="password"]                                 ${pass}
    #step 5. Klik login
    Click Element                   //button[@type="submit"]
    #step 6.Validasi red box
    Element Should Be Visible       //input[@class="form-control is-invalid"]    

I'm forget password with invalid email
    #step 2. fullscreen valid window
    Maximize Browser Window
    #step 3. Klik "Lupa kata sandi?"
    Click Element                    //p[@id="forgot-password-container"]
    # #step 4. Input invalid email
    Input Text                       //input[@id="email"]                                    ${invalid_user} 
    # #step 5. Klik submit
    Click Element                    //button[@type="submit"] 
    # #step 6. Validasi error
    Element Should Contain           //span[@class="invalid-feedback"]                       ${error_message_inv_mail}         


I'm forget password with not registered email   
    #step 2. fullscreen valid window
    Maximize Browser Window
    #step 3. Klik "Lupa kata sandi?"
    Click Element                    //p[@id="forgot-password-container"]
    # #step 4. Input not registered email
    Input Text                       //input[@id="email"]                                    ${not_user}  
    # #step 5. Klik submit
    Click Element                    //button[@type="submit"] 
    # #step 6. Validasi error
    Element Should Contain           //span[@class="invalid-feedback"]                       ${error_message_not_mail}       