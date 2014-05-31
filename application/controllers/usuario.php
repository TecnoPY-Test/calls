<?php
if (!defined('BASEPATH'))
	exit('No direct script access allowed');

class Usuario extends CI_Controller {

	function __construct() {
		parent::__construct();

		/* Standard Libraries of codeigniter are required */
		$this -> load -> database();
		$this -> load -> helper('url');
		/* ------------------ */

		$this -> load -> library('grocery_CRUD');

	}

	public function index() {
		/*echo "<h1>Welcome to the world of Codeigniter</h1>";
		echo '<iframe src="http://localhost/calls/index.php/usuario/usuarios/add" width="100%" height="390px" style="border:none;"></iframe>';
		echo '<iframe src="http://localhost/calls/index.php/usuario/usuarios" width="100%" height="100%" style="border:none;"></iframe>';*/
		echo '<iframe src="http://localhost/calls/index.php/usuario/remitentes/add" width="100%" height="390px" style="border:none;"></iframe>';
		echo '<iframe src="http://localhost/calls/index.php/usuario/destinatarios/add" width="100%" height="100%" style="border:none;"></iframe>';
		/*echo '<iframe src="http://localhost/calls/index.php/usuarios/usuarios">
		
		</iframe>';*/
		//Just an example to ensure that we get into the function
		die();
	}

	public function usuarios() {
		$this -> grocery_crud -> set_table('usuarios');
		$this -> grocery_crud -> set_subject('Usuario');
		//$this->config->set_item('grocery_crud_dialog_forms',true);
		//$this -> grocery_crud -> set_theme('twitter-bootstrap');
		
		$this -> grocery_crud -> set_theme('datatables');
		//$this -> grocery_crud -> set_theme('flexigrid');
		//$this -> grocery_crud -> columns('login', 'password', 'email', 'last_login', 'avatar');
		//para list
		//$this -> grocery_crud -> fields('login', 'password', 'email', 'last_login', 'avatar');
		//para edit
		$this -> grocery_crud -> field_type('password', 'password');
		$this -> grocery_crud -> field_type('password', 'readonly');
		
		
		//$crud->add_action('addNew', '', 'usuarios/addNew','ui-icon-plus');
		$this -> grocery_crud ->callback_column('avatar', array($this, '_callback_avatar'));

		/*
		 $this->grocery_crud->display_as('lastName','Last Name');
		 $this->grocery_crud->display_as('firstName','First Name');
		 $this->grocery_crud->display_as('jobTitle','Job Title');
		 */
		$this -> grocery_crud -> set_relation('roles_roles_id','roles','descripcion');
		
		$output = $this -> grocery_crud -> render();

		$this -> _example_output($output);
	}

	public function remitentes() {
		
		$output = $this -> grocery_crud -> render();

		$this -> _example_output($output);
	}
		
	public function destinatarios() {
	
		$output = $this -> grocery_crud -> render();

		$this -> _example_output($output);
	}
	public function categorias() {
	
		$output = $this -> grocery_crud -> render();

		$this -> _example_output($output);
	}
	public function llamadas() {
	
		$output = $this -> grocery_crud -> render();

		$this -> _example_output($output);
	}
	public function roles() {
		$this -> grocery_crud -> set_relation_n_n('permisos','roles_has_permisos','permisos','roles_roles_id','permisos_permisos_id','modulo','permisos_permisos_id' );
		$output = $this -> grocery_crud -> render();

		$this -> _example_output($output);
	}
	public function permisos() {
	
		$output = $this -> grocery_crud -> render();

		$this -> _example_output($output);
	}
	public function roles_has_permisos() {
	
		$output = $this -> grocery_crud -> render();

		$this -> _example_output($output);
	}
	
	
	function addNew(){
		;
	}

	public function _callback_avatar($value, $row)
	{
	  return "<a href='http://www.grocerycrud.com/assets/themes/default/images/logo.png' class='fancybox'>$value</a>";
	}

	function _example_output($output = null) {
		$this -> load -> view('our_template.php', $output);
	}

}

/* End of file usuario.php */
/* Location: ./application/controllers/main.php */
