<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Court
 *
 * @property int $id
 * @property string $descripcion
 * @property int $localidades_id
 *
 * @property Locality $localidade
 * @property Collection|LegalCase[] $casos
 *
 * @package App\Models
 */
class Court extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
	protected $table = 'juzgados';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'id' => 'int',
		'localidades_id' => 'int'
	];

	protected $fillable = [
		'descripcion',
		'localidades_id'
	];

	public function localidades_id()
	{
		return $this->belongsTo(Locality::class, 'localidades_id');
	}

	public function casos()
	{
		return $this->hasMany(LegalCase::class, 'juzgado');
	}
}
