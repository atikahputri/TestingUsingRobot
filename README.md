# TestingUsingRobot

Cara menjalankan automation test
1. Download file login.robot
2. Open file tersebut menggunakan aplikasi Vscode
3. Jalankan proses testing dengan command "robot logiin.robot"
4. Test akan berjalan sesuai urutan test casenya

Hasil pengujian
---------------

Test terdiri dari 5 test case, diantaranya adalah
Test Case [1] I'm login with valid email and valid password [PASSED]
step 1. open browser dan url
step 2. fullscreen valid window
step 3. input email
step 4. input valid password
step 5. Klik login
step 6. Validasi halaman dashboard
step 7. close browser

Test Case [2] I'm login with valid email and invalid password [PASSED] 
step 1. open browser dan url
step 2. fullscreen valid window
step 3. input email
step 4. input invalid password
step 5. Klik login
step 6. Validasi pesan error
step 7. close browser

Test Case [3] I'm login with email not registered and valid password [PASSED]
step 1. open browser dan url
step 2. fullscreen valid window
step 3. input not registered email
step 4. input valid password
step 5. Klik login
step 6. Validasi red box
step 7. close browser

Test Case [3] I'm forget password with invalid email [PASSED]
step 1. open browser dan url
step 2. fullscreen valid window
step 3. Klik "Lupa kata sandi?"
step 4. Input invalid email
step 5. Klik submit
step 6. Validasi error
step 7. close browser

Test Case [4] I'm forget password with not registered email [PASSED]  
step 1. open browser dan url 
step 2. fullscreen valid window
step 3. Klik "Lupa kata sandi?"
step 4. Input not registered email
step 5. Klik submit
step 6. Validasi error
step 7. close browser
