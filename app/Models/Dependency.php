<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Dependency
 *
 * @property int $id
 * @property string $descripcion
 *
 * @property Collection|DependencyPerson[] $dep_personas
 *
 * @package App\Models
 */
class Dependency extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
	protected $table = 'dependencias';
	public $timestamps = false;

	protected $fillable = [
		'descripcion'
	];

	public function dep_personas()
	{
		return $this->hasMany(DependencyPerson::class, 'dependencia');
	}
}
