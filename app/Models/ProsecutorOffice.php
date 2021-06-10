<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class ProsecutorOffice
 *
 * @property int $id
 * @property string $descripcion
 *
 * @property Collection|LegalCase[] $casos
 *
 * @package App\Models
 */
class ProsecutorOffice extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
	protected $table = 'fiscalia';
	public $timestamps = false;

	protected $fillable = [
		'descripcion'
	];

	public function casos()
	{
		return $this->hasMany(LegalCase::class, 'fiscalia');
	}
}
