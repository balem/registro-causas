<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class CriminalHistory
 *
 * @property int $id
 * @property string $descripcion
 *
 * @property Collection|PersonCriminalHistory[] $per_antecedentes
 *
 * @package App\Models
 */
class CriminalHistory extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
	protected $table = 'antecedentes';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'id' => 'int'
	];

	protected $fillable = [
		'descripcion'
	];

	public function getDescription() : string
    {
        return $this->descripcion;
    }

    public function per_antecedentes()
	{
		return $this->hasMany(PersonCriminalHistory::class, 'antecedentes_id');
	}
}
