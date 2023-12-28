<?php

namespace Config;

use CodeIgniter\Config\BaseConfig;
use CodeIgniter\Validation\StrictRules\CreditCardRules;
use CodeIgniter\Validation\StrictRules\FileRules;
use CodeIgniter\Validation\StrictRules\FormatRules;
use CodeIgniter\Validation\StrictRules\Rules;

class Validation extends BaseConfig
{
    // --------------------------------------------------------------------
    // Setup
    // --------------------------------------------------------------------

    /**
     * Stores the classes that contain the
     * rules that are available.
     *
     * @var string[]
     */
    public array $ruleSets = [
        Rules::class,
        FormatRules::class,
        FileRules::class,
        CreditCardRules::class,
    ];

    /**
     * Specifies the views that are used to display the
     * errors.
     *
     * @var array<string, string>
     */
    public array $templates = [
        'list'   => 'CodeIgniter\Validation\Views\list',
        'single' => 'CodeIgniter\Validation\Views\single',
    ];

    // --------------------------------------------------------------------
    // Rules
    // --------------------------------------------------------------------
	    public function customValidationErrorMessage(string $str, string $field, array $data): bool
    {
        // Giả sử bạn có một hàm kiểm tra tên đăng nhập và mật khẩu
        $isValid = $this->checkLogin($data['username'], $data['password']);

        // Nếu không hợp lệ, đặt thông báo lỗi tùy chỉnh
        if (!$isValid) {
            $this->validation->setError('username', 'Tên đăng nhập hoặc mật khẩu không đúng');
            return false;
        }

        return true;
    }

    private function checkLogin($username, $password)
    {
				// Connect to database
		  $conn = mysqli_connect("sql112.infinityfree.com", "if0_35584961", "khunglo777", "if0_35584961_learn_english");

		  // Query for user with given username and password
		  $sql = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
		  $result = mysqli_query($conn, $sql);

		  // Check if query returned a matching user
		  if (mysqli_num_rows($result) == 1) {
			return true; // User is authenticated
		  } else {
			return false; // User is not authorized
		  }
    }
}
