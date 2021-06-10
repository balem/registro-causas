<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Locality
 *
 * @property int $id
 * @property string $descripcion
 * @property int $circunscripciones
 *
 * @property Constituency $circunscripcione
 * @property Collection|OmbudsmanOffice[] $defensorias
 * @property Collection|Court[] $juzgados
 *
 * @package App\Models
 */
class Locality extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
	protected $table = 'localidades';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'id' => 'int',
		'circunscripciones' => 'int'
	];

	protected $fillable = [
		'descripcion',
		'circunscripciones'
	];

	public function getConsituencyDescription()
    {
        return $this->circunscripcione->descripcion;
    }

    public function circunscripciones()
	{
		return $this->belongsTo(Constituency::class, 'id');
	}

    public function getDescription(): string
    {
        return $this->descripcion;
    }

	public function defensorias()
	{
		return $this->hasMany(OmbudsmanOffice::class, 'localidades_id');
	}

	public function juzgados()
	{
		return $this->hasMany(Court::class, 'localidades_id');
	}

}
