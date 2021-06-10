<?php

// --------------------------
// Custom Backpack Routes
// --------------------------
// This route file is loaded automatically by Backpack\Base.
// Routes you generate using Backpack\Generators will be placed here.

Route::group([
    'prefix'     => config('backpack.base.route_prefix', 'admin'),
    'middleware' => array_merge(
        (array) config('backpack.base.web_middleware', 'web'),
        (array) config('backpack.base.middleware_key', 'admin')
    ),
    'namespace'  => 'App\Http\Controllers\Admin',
], function () { // custom admin routes
    Route::crud('academicdegree', 'AcademicDegreeCrudController');
    Route::crud('constituency', 'ConstituencyCrudController');
    Route::crud('court', 'CourtCrudController');
    Route::crud('criminalhistory', 'CriminalHistoryCrudController');
    Route::crud('criminaljurisdiction', 'CriminalJurisdictionCrudController');
    Route::crud('defensecounsel', 'DefenseCounselCrudController');
    Route::crud('dependency', 'DependencyCrudController');
    Route::crud('dependencyperson', 'DependencyPersonCrudController');
    Route::crud('district', 'DistrictCrudController');
    Route::crud('ethniccommunity', 'EthnicCommunityCrudController');
    Route::crud('legalcase', 'LegalCaseCrudController');
    Route::crud('locality', 'LocalityCrudController');
    Route::crud('nationality', 'NationalityCrudController');
    Route::crud('ombudsmanoffice', 'OmbudsmanOfficeCrudController');
    Route::crud('person', 'PersonCrudController');
    Route::crud('personcriminalhistory', 'PersonCriminalHistoryCrudController');
    Route::crud('personalrestraint', 'PersonalRestraintCrudController');
    Route::crud('personalrestraintperson', 'PersonalRestraintPersonCrudController');
    Route::crud('processdata', 'ProcessDataCrudController');
    Route::crud('processexit', 'ProcessExitCrudController');
    Route::crud('prosecutoroffice', 'ProsecutorOfficeCrudController');
    Route::crud('stage', 'StageCrudController');
}); // this should be the absolute last line of this file
