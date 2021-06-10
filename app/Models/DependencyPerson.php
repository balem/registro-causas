<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class DependencyPerson
 *
 * @property int $persona
 * @property int $dependencia
 * @property int|null $cant
 *
 *
 * @package App\Models
 */
class DependencyPerson extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
	protected $table = 'dep_personas';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'persona' => 'int',
		'dependencia' => 'int',
		'cant' => 'int'
	];

	protected $fillable = [
		'cant'
	];

	public function dependencia()
	{
		return $this->belongsTo(Dependency::class, 'dependencia');
	}

	public function persona()
	{
		return $this->belongsTo(Person::class, 'persona');
	}
}
