<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Person
 *
 * @property int $id
 * @property string $nombre
 * @property string $apellido
 * @property Carbon $fec_nacimiento
 * @property string $documento
 * @property string $typ_documento
 * @property string $sexo
 * @property string $lug_nacimiento
 * @property int $nacionalidad
 * @property int|null $com_etnica
 * @property int $gra_ademicos_id
 * @property string|null $ocupacion
 * @property string|null $oficio
 *
 * @property AcademicDegree $gra_ademico
 * @property Nationality $nacionalidade
 * @property Collection|ProcessData[] $dat_procesos
 * @property Collection|DependencyPerson[] $dep_personas
 * @property Collection|PersonCriminalHistory[] $per_antecedentes
 * @property Collection|PersonalRestraintPerson[] $per_sujeciones
 *
 * @package App\Models
 */
class Person extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
	protected $table = 'personas';
	public $timestamps = false;

	protected $casts = [
		'nacionalidad' => 'int',
		'com_etnica' => 'int',
		'gra_ademicos_id' => 'int'
	];

	protected $dates = [
		'fec_nacimiento'
	];

	protected $fillable = [
		'nombre',
		'apellido',
		'fec_nacimiento',
		'documento',
		'typ_documento',
		'sexo',
		'lug_nacimiento',
		'nacionalidad',
		'com_etnica',
		'gra_ademicos_id',
		'ocupacion',
		'oficio'
	];

	public function com_etnica()
	{
		return $this->belongsTo(EthnicCommunity::class, 'com_etnica');
	}

	public function gra_ademico()
	{
		return $this->belongsTo(AcademicDegree::class, 'gra_ademicos_id');
	}

	public function nacionalidade()
	{
		return $this->belongsTo(Nationality::class, 'nacionalidad');
	}

	public function dat_procesos()
	{
		return $this->hasMany(ProcessData::class, 'personas');
	}

	public function dep_personas()
	{
		return $this->hasMany(DependencyPerson::class, 'persona');
	}

	public function per_antecedentes()
	{
		return $this->hasMany(PersonCriminalHistory::class, 'personas_id');
	}

	public function per_sujeciones()
	{
		return $this->hasMany(PersonalRestraintPerson::class, 'personas');
	}
}
