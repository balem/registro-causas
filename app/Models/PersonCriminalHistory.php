<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class PersonCriminalHistory
 *
 * @property int $personas_id
 * @property int $antecedentes_id
 *
 * @property CriminalHistory $antecedente
 * @property Person $persona
 *
 * @package App\Models
 */
class PersonCriminalHistory extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
	protected $table = 'per_antecedentes';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'personas_id' => 'int',
		'antecedentes_id' => 'int'
	];

	public function antecedente()
	{
		return $this->belongsTo(CriminalHistory::class, 'antecedentes_id');
	}

	public function persona()
	{
		return $this->belongsTo(Person::class, 'personas_id');
	}
}
