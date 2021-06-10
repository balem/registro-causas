<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\PersonRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class PersonCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class PersonCrudController extends CrudController
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
        CRUD::setModel(\App\Models\Person::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/person');
        CRUD::setEntityNameStrings('person', 'Datos de la persona');
    }

    /**
     * Define what happens when the List operation is loaded.
     *
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        CRUD::column('nombre');
        CRUD::column('apellido');
        CRUD::column('fec_nacimiento');
        CRUD::column('documento');
        CRUD::column('typ_documento');
        CRUD::column('sexo');
        CRUD::column('lug_nacimiento');
        CRUD::column('nacionalidad');
        CRUD::column('com_etnica');
        CRUD::column('gra_ademicos_id');
        CRUD::column('ocupacion');
        CRUD::column('oficio');

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
        CRUD::setValidation(PersonRequest::class);

        CRUD::field('nombre');
        CRUD::field('apellido');
        CRUD::field('fec_nacimiento');
        CRUD::field('documento');
        CRUD::field('typ_documento');
        CRUD::field('sexo');
        CRUD::field('lug_nacimiento');
        CRUD::field('nacionalidad');
        CRUD::field('com_etnica');
        CRUD::field('gra_ademicos_id');
        CRUD::field('ocupacion');
        CRUD::field('oficio');
        CRUD::addField([
           'lavel' => 'Antecedentes',
            'type' => 'select2_multiple',
            'name' => 'antecedentes',
            'model' => 'App\Models\CriminalHistory',
            'entity' => 'per_antecedentes',
            'attribute' => 'descripcion',
        ]);

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
