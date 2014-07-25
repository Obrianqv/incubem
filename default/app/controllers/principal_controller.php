<?php
/**
 * Dailyscript - Web | App | Media
 *
 * Descripcion: Controlador principal (reemplaza al index_controller)
 *
 * @category    
 * @package     Controllers 
 * @author      Iván D. Meléndez (ivan.melendez@dailycript.com.co)
 * @copyright   Copyright (c) 2013 Dailyscript Team (http://www.dailyscript.com.co) 
 */
View::template('default-incu');

Load::models('imagen');

class PrincipalController extends AppController {
    
    public $page_title = 'Daily Backend Manager';
    
    public function index() {
		
		$imagen=new Imagen();
	
	$this -> listaEvento = $imagen -> find();
        
    }

    public function subir() {
        
		View::template('general');
		
		   
    }
	
	public function archivo() {
        View::select('index');  //para mostrar siempre la vista con los formularios
        if (Input::hasPost('oculto')) {  //para saber si se envió el form
            $archivo = Upload::factory('archivo');//llamamos a la libreria y le pasamos el nombre del campo file del formulario
            $archivo->setExtensions(array('zip','rar')); //le asignamos las extensiones a permitir
            if ($archivo->isUploaded()) { 
                if ($archivo->save()) {
                    Flash::valid('Archivo subido correctamente...!!!');
                }
            }else{
                    Flash::warning('No se ha Podido Subir el Archivo...!!!');
            }
        }
    }
 
    public function imagen() {
		
		View::template('general');
		
        View::select('subir');  //para mostrar siempre la vista con los formularios
        if (Input::hasPost('oculto')) {  //para saber si se envió el form
		
 		
			
            //llamamos a la libreria y le pasamos el nombre del campo file del formulario
            //el segundo parametro de Upload::factory indica que estamos subiendo una imagen
            //por defecto la libreria Upload trabaja con archivos...
            $archivo = Upload::factory('archivo', 'image'); 
            $archivo->setExtensions(array('jpg', 'png', 'gif'));//le asignamos las extensiones a permitir
            if ($archivo->isUploaded()) {
                if ($name = $archivo->save()) {
					
					$path = PUBLIC_PATH.'img/upload/'.$name;
					
					$imagen = Load::model('imagen');
					$imagen->ruta = $path;
					$imagen->save();


					
                    Flash::valid('Imagen subida correctamente...!!!');
					
					return Router::redirect('principal/subir');
					
                }
            }else{
					
					
                    Flash::warning('No se ha Podido guardar la imagen...!!!');
					
					return Router::redirect('principal/subir');
            }
			
        }
		else
		{
			
			Flash::warning('No se ha Podido Subir la imagen...!!!');
					
					return Router::redirect('principal/subir');
			
		}
    }
	
	
	public function listar()
	{
	
	View::template('general');
	
	$imagen=new Imagen();
	
	$this -> listaEvento = $imagen -> find();
		
	}
	
	 public function del($id)
    {
        $menu = new Imagen();
        if ($menu->delete((int)$id)) {
                Flash::valid('Operación exitosa');
        }else{
                Flash::error('Falló Operación'); 
        }
 
        //enrutando por defecto al index del controller
        return Router::redirect('principal/listar');
    }
 
		
}
		
    



