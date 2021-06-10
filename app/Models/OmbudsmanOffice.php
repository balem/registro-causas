<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class OmbudsmanOffice
 *
 * @property int $id
 * @property int $localidades_id
 * @property int $fueros_id
 *
 * @property CriminalJurisdiction $fuero
 * @property Locality $localidade
 * @property Collection|LegalCase[] $casos
 *
 * @package App\Models
 */
class OmbudsmanOffice extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
	protected $table = 'defensorias';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'id' => 'int',
		'localidades_id' => 'int',
		'fueros_id' => 'int'
	];

	protected $fillable = [
		'localidades_id',
		'fueros_id'
	];

	public function fueros()
	{
		return $this->belongsTo(CriminalJurisdiction::class, 'fueros_id');
	}

	public function localidades()
	{
		return $this->belongsTo(Locality::class, 'localidades_id');
	}

	public function casos()
	{
		return $this->hasMany(LegalCase::class, 'defensoria');
	}
}
