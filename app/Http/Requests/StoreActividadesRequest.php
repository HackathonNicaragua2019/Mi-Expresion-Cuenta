<?php

namespace MiExpresionCuenta\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreActividadesRequest extends FormRequest
{
    public function authorize()
    {
        return auth()->check();
    }

    public function rules()
    {
        return [
            'preguntas' => [
                'required', 'array'
            ],
            'preguntas.*' => [
                'required', 'integer', 'exists:opciones,id'
            ],
        ];
    }
}
