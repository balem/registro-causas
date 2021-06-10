<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\ProcessDataRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class ProcessDataCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class ProcessDataCrudController extends CrudController
{
    use \Backpack\CRUD\app\Http\Controllers\Operations\ListOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\CreateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\UpdateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\DeleteOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\ShowOperation;

    /**
     * Configure the CrudPanel object. Apply settings to all operations.
     *
     * @return void
     */
    public function setup()
    {
        CRUD::setModel(\App\Models\ProcessData::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/processdata');
        CRUD::setEntityNameStrings('processdata', 'Datos del proceso');
    }

    /**
     * Define what happens when the List operation is loaded.
     *
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        CRUD::column('fec_entrada');
        CRUD::column('etapa');
        CRUD::column('salida');
        CRUD::column('fec_resolucion');
        CRUD::column('fec_salida');
        CRUD::column('fec_ult_actuacion');
        CRUD::column('det_ult_actuacion');
        CRUD::column('estado');
        CRUD::column('defensor');

        /**
         * Columns can be defined using the fluent syntax or array syntax:
         * - CRUD::column('price')->type('number');
         * - CRUD::addColumn(['name' => 'price', 'type' => 'number']);
         */
    }

    /**
     * Define what happens when the Create operation is loaded.
     *
     * @see https://backpackforlaravel.com/docs/crud-operation-create
     * @return void
     */
    protected function setupCreateOperation()
    {
        CRUD::setValidation(ProcessDataRequest::class);

        CRUD::field('fec_entrada')->label('Fecha de entrada');
        CRUD::field('etapa');
        CRUD::field('salida');
        CRUD::field('fec_resolucion');
        CRUD::field('fec_salida');
        CRUD::field('fec_ult_actuacion');
        CRUD::field('det_ult_actuacion');
        CRUD::field('estado');
        CRUD::field('defensor');

        /**
         * Fields can be defined using the fluent syntax or array syntax:
         * - CRUD::field('price')->type('number');
         * - CRUD::addField(['name' => 'price', 'type' => 'number']));
         */
    }

    /**
     * Define what happens when the Update operation is loaded.
     *
     * @see https://backpackforlaravel.com/docs/crud-operation-update
     * @return void
     */
    protected function setupUpdateOperation()
    {
        $this->setupCreateOperation();
    }
}
