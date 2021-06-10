<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class EthnicCommunity
 *
 * @property int $id
 * @property string $descripcionl
 *
 * @property Collection|Person[] $personas
 *
 * @package App\Models
 */
class EthnicCommunity extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
	protected $table = 'com_etnica';
	public $timestamps = false;

	protected $fillable = [
		'descripcionl'
	];

	public function personas()
	{
		return $this->hasMany(Person::class, 'com_etnica');
	}
}
