<?php

namespace App\Http\Controllers\Api\V1;

use App\Models\Dog;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use CloudinaryLabs\CloudinaryLaravel\Facades\Cloudinary;

class DogController extends Controller
{
    public function getAll()
    {
        $dogs = Dog::all(); 
        return response()->json([
            'status' => true,
            'data' => $dogs
        ], 200);
    }

    public function store(Request $request)
    {
        try {
            $validator = Validator::make($request->all(), [
                'breed' => 'required',
                'size' => 'required',                
                'hairColor' => 'required',                                
                'photo' => 'required|image|mimes:png,jpg,jpeg,webp',                              
            ]);

            if ($validator->fails()) {
                return response()->json([
                    'status' => false,
                    'errors' => $validator->errors()->all()
                ], 400);
            }

            $dog = new Dog($request->all());            

            if ($request->hasFile('photo')) {
                $uploadedFileUrl = Cloudinary::upload($request->file('photo')->getRealPath())->getSecurePath();
                $dog->photo = $uploadedFileUrl;
            }

            $dog->save();

            return response()->json([
                'status' => true,
                'message' => 'New dog added successfully',
                'event' => $dog,
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'status' => false,
                'message' => 'Failed to add a new dog',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function destroy(Dog $dog)
    {
        try {            
            Cloudinary::destroy($dog->photo);            
            $dog->delete();

            return response()->json([
                'status' => true,
                'message' => 'dog deleted successfully'
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'status' => false,
                'message' => 'Failed to delete a dog.',
                'error' => $e->getMessage()
            ], 500);
        }
    }
}
