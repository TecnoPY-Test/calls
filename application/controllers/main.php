<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
class Main extends CI_Controller {
 
    function __construct()
    {
        parent::__construct();
 
        /* Standard Libraries of codeigniter are required */
        $this->load->database();
        $this->load->helper('url');
        /* ------------------ */ 
 
        $this->load->library('grocery_CRUD');
 
    }
 
    public function index()
    {
        echo "<h1>Welcome to the world of Codeigniter</h1>";//Just an example to ensure that we get into the function
                die();
    }
 
    public function employees()
    {
        $this->grocery_crud->set_table('employees');
		$this->grocery_crud->set_subject('Employee');
		$this->grocery_crud->set_theme('datatables');
		$this->grocery_crud->columns('lastName','firstName','email','jobTitle'); //para list
		$this->grocery_crud->fields('lastName','firstName','extension','email','jobTitle'); //para edit
        
		$this->grocery_crud->display_as('lastName','Last Name');
        $this->grocery_crud->display_as('firstName','First Name');
        $this->grocery_crud->display_as('jobTitle','Job Title');
		
		$output = $this->grocery_crud->render();
 
 
        $this->_example_output($output);        
    }
	
	public function usuarios()
    {
        $this->grocery_crud->set_table('usuarios');
		$this->grocery_crud->set_subject('Usuario');
		$this->grocery_crud->set_theme('datatables');
		$this->grocery_crud->columns('login','password','email','last_login','avatar'); //para list
		$this->grocery_crud->fields('login','password','email','last_login','avatar'); //para edit
		$this->grocery_crud->field_type('password', 'password');
		$this->grocery_crud->field_type('password', 'readonly');
		
       /* 
		$this->grocery_crud->display_as('lastName','Last Name');
        $this->grocery_crud->display_as('firstName','First Name');
        $this->grocery_crud->display_as('jobTitle','Job Title');
		*/
		$output = $this->grocery_crud->render();
 
 
        $this->_example_output($output);        
    }
 
    function _example_output($output = null)
 
    {
        $this->load->view('our_template.php',$output);    
    }
}
 
/* End of file main.php */
/* Location: ./application/controllers/main.php */