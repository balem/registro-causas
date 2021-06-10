<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class LegalCase
 *
 * @property int $id
 * @property string $caratula
 * @property int $año
 * @property int $fiscalia
 * @property int $juzgado
 * @property int $defensoria
 * @property Carbon $fec_hec_punible
 * @property string $tip_penal
 * @property int $distrito
 *
 * @property ProsecutorOffice $fiscalium
 * @property Collection|ProcessData[] $dat_procesos
 *
 * @package App\Models
 */
class LegalCase extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
	protected $table = 'casos';
	public $timestamps = false;

	protected $casts = [
		'anho' => 'int',
		'fiscalia' => 'int',
		'juzgado' => 'int',
		'defensoria' => 'int',
		'distrito' => 'int'
	];

	protected $dates = [
		'fec_hec_punible'
	];

	protected $fillable = [
		'caratula',
		'año',
		'fiscalia',
		'juzgado',
		'defensoria',
		'fec_hec_punible',
		'tip_penal',
		'distrito'
	];

	public function defensoria()
	{
		return $this->belongsTo(OmbudsmanOffice::class, 'defensoria');
	}

	public function distrito()
	{
		return $this->belongsTo(District::class, 'distrito');
	}

	public function fiscalium()
	{
		return $this->belongsTo(ProsecutorOffice::class, 'fiscalia');
	}

	public function juzgado()
	{
		return $this->belongsTo(Court::class, 'juzgado');
	}

	public function dat_procesos()
	{
		return $this->hasMany(ProcessData::class, 'casos');
	}
}
