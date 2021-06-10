<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class DefenseCounsel
 *
 * @property int $id
 * @property string $nombre
 * @property string $apellido
 *
 * @property Collection|ProcessData[] $dat_procesos
 *
 * @package App\Models
 */
class DefenseCounsel extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
	protected $table = 'defensores';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'id' => 'int'
	];

	protected $fillable = [
		'nombre',
		'apellido'
	];

	public function dat_procesos()
	{
		return $this->hasMany(ProcessData::class, 'defensor');
	}
}
