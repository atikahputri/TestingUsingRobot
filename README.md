# TestingUsingRobot

Cara menjalankan automation test
1. Download file login.robot
2. Open file tersebut menggunakan aplikasi Vscode
3. Jalankan proses testing dengan command "robot logiin.robot"
4. Test akan berjalan sesuai urutan test casenya

Hasil pengujian
---------------

Test terdiri dari 5 test case, diantaranya adalah <br> <br>
Test Case [1] I'm login with valid email and valid password [PASSED] <br>
step 1. open browser dan url <br>
step 2. fullscreen valid window <br>
step 3. input email <br>
step 4. input valid password <br>
step 5. Klik login <br>
step 6. Validasi halaman dashboard <br>
step 7. close browser <br>

Test Case [2] I'm login with valid email and invalid password [PASSED] <br>
step 1. open browser dan url <br>
step 2. fullscreen valid window <br>
step 3. input email <br>
step 4. input invalid password <br>
step 5. Klik login <br>
step 6. Validasi pesan error <br>
step 7. close browser <br>

Test Case [3] I'm login with email not registered and valid password [PASSED] <br>
step 1. open browser dan url <br>
step 2. fullscreen valid window <br>
step 3. input not registered email <br>
step 4. input valid password <br>
step 5. Klik login <br>
step 6. Validasi red box <br>
step 7. close browser <br>

Test Case [3] I'm forget password with invalid email [PASSED] <br>
step 1. open browser dan url <br>
step 2. fullscreen valid window <br>
step 3. Klik "Lupa kata sandi?" <br>
step 4. Input invalid email <br>
step 5. Klik submit <br>
step 6. Validasi error <br>
step 7. close browser <br>

Test Case [4] I'm forget password with not registered email [PASSED] <br>
step 1. open browser dan url <br> 
step 2. fullscreen valid window <br>
step 3. Klik "Lupa kata sandi?" <br>
step 4. Input not registered email <br>
step 5. Klik submit <br>
step 6. Validasi error <br>
step 7. close browser <br>
