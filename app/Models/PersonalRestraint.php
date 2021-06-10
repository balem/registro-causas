<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class PersonalRestraint
 *
 * @property int $id
 * @property string $descripcion
 *
 * @property Collection|PersonalRestraintPerson[] $per_sujeciones
 *
 * @package App\Models
 */
class PersonalRestraint extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
	protected $table = 'sujeciones';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'id' => 'int'
	];

	protected $fillable = [
		'descripcion'
	];

	public function per_sujeciones()
	{
		return $this->hasMany(PersonalRestraintPerson::class, 'sujeciones');
	}
}
