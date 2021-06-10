<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class District
 *
 * @property int $id
 * @property string $descripcion
 *
 * @property Collection|LegalCase[] $casos
 *
 * @package App\Models
 */
class District extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
	protected $table = 'distritos';
	public $timestamps = false;

	protected $fillable = [
		'descripcion'
	];

	public function casos()
	{
		return $this->hasMany(LegalCase::class, 'distrito');
	}
}
