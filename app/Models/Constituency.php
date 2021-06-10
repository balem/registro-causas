<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Constituency
 *
 * @property int $id
 * @property string $descripcion
 *
 * @property Collection|Locality[] $localidades
 *
 * @package App\Models
 */
class Constituency extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
	protected $table = 'circunscripciones';
	public $timestamps = false;

	protected $fillable = [
		'descripcion'
	];

	public function localidades()
	{
		return $this->hasMany(Locality::class, 'circunscripciones');
	}
}
