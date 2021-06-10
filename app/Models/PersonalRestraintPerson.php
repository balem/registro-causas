<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class PersonalRestraintPerson
 *
 * @property int $personas
 * @property int $sujeciones
 * @property Carbon $fecha
 *
 * @property Person $persona
 * @property PersonalRestraint $sujecione
 *
 * @package App\Models
 */
class PersonalRestraintPerson extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
	protected $table = 'per_sujeciones';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'personas' => 'int',
		'sujeciones' => 'int'
	];

	protected $dates = [
		'fecha'
	];

	public function persona()
	{
		return $this->belongsTo(Person::class, 'personas');
	}

	public function sujecione()
	{
		return $this->belongsTo(PersonalRestraint::class, 'sujeciones');
	}
}
