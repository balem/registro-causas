<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class ProcessData
 *
 * @property int $personas
 * @property int $casos
 * @property Carbon|null $fec_entrada
 * @property int $etapa
 * @property int|null $salida
 * @property Carbon $fec_resolucion
 * @property Carbon $fec_salida
 * @property Carbon $fec_ult_actuacion
 * @property string $det_ult_actuacion
 * @property string $estado
 * @property int $defensor
 *
 * @property DefenseCounsel $defensore
 * @property LegalCase $caso
 * @property Person $persona
 *
 * @package App\Models
 */
class ProcessData extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
	protected $table = 'dat_proceso';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'personas' => 'int',
		'casos' => 'int',
		'etapa' => 'int',
		'salida' => 'int',
		'defensor' => 'int'
	];

	protected $dates = [
		'fec_entrada',
		'fec_resolucion',
		'fec_salida',
		'fec_ult_actuacion'
	];

	protected $fillable = [
		'fec_entrada',
		'etapa',
		'salida',
		'fec_resolucion',
		'fec_salida',
		'fec_ult_actuacion',
		'det_ult_actuacion',
		'estado',
		'defensor'
	];

	public function defensor()
	{
		return $this->belongsTo(DefenseCounsel::class, 'defensor');
	}

	public function etapa()
	{
		return $this->belongsTo(Stage::class, 'etapa');
	}

	public function salida()
	{
		return $this->belongsTo(ProcessExit::class, 'salida');
	}

	public function caso()
	{
		return $this->belongsTo(LegalCase::class, 'casos');
	}

	public function persona()
	{
		return $this->belongsTo(Person::class, 'personas');
	}
}
