<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Stage
 *
 * @property int $id
 * @property string $descripcion
 *
 * @property Collection|ProcessData[] $dat_procesos
 *
 * @package App\Models
 */
class Stage extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
	protected $table = 'etapas';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'id' => 'int'
	];

	protected $fillable = [
		'descripcion'
	];

	public function dat_procesos()
	{
		return $this->hasMany(ProcessData::class, 'etapa');
	}
}
