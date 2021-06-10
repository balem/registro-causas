<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class CriminalJurisdiction
 *
 * @property int $id
 * @property string $descripcion
 *
 * @property Collection|OmbudsmanOffice[] $defensorias
 *
 * @package App\Models
 */
class CriminalJurisdiction extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
	protected $table = 'fueros';
	public $timestamps = false;

	protected $fillable = [
		'descripcion'
	];

	public function defensorias()
	{
		return $this->hasMany(OmbudsmanOffice::class, 'fueros_id');
	}
}
