<?php
/**
 * Dailyscript - Web | App | Media
 *
 * Clase que gestiona lo relacionado con los tipos de identificacion
 *
 * @category    Parámetros
 * @package     Models
 * @author      Iván D. Meléndez (ivan.melendez@dailyscript.com.co)
 * @copyright   Copyright (c) 2013 Dailyscript Team (http://www.dailyscript.com.co) 
 */

class Imagen extends ActiveRecord {

	public function buscarparticipante()
	{
		
		return  $this->find_all_by_sql(' SELECT * FROM imagen ');
	
		
	}
	
	public function actualizoequipo()
	{
		
		}

}
?>