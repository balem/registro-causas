<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class AcademicDegree
 *
 * @property int $id
 * @property string $descripcion
 *
 * @property Collection|Person[] $personas
 *
 * @package App\Models
 */
class AcademicDegree extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
	protected $table = 'gra_ademicos';
	public $timestamps = false;

	protected $fillable = [
		'descripcion'
	];

	public function personas()
	{
		return $this->hasMany(Person::class, 'gra_ademicos_id');
	}
}
