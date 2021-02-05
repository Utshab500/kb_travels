<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Test extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/userguide3/general/urls.html
	 */
	public function index()
	{
		$data['data'] = "Hello"; 
		$view_data['subview'] = $this->load->view('home/home',$data,true);
		$this->load->view('mother/container',$view_data); 
	}

	public function apicall() {
		$apiData = array(
			'key_1' => 'val_1',
			'key_2' => 'val_2'
		);
		return json_encode($apiData);
	}
}
