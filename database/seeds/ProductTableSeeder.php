<?php

use Illuminate\Database\Seeder;

class ProductTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $product = new App\Product([
            'imagePath' => 'https://bookriot.com/wp-content/uploads/2017/08/witch-halloween-pumpkins-bones-feature-470x248.png',
            'title' => 'Witch Halloween',
            'description' => 'The best book ever written.',
            'price' => 10
        ]);
        $product->save();

        $product = new App\Product([
            'imagePath' => 'https://images-na.ssl-images-amazon.com/images/I/51TNIcVTzPL._SX327_BO1,204,203,200_.jpg',
            'title' => 'Stephen King',
            'description' => 'Love this book.',
            'price' => 20
        ]);
        $product->save();
        $product = new App\Product([
            'imagePath' => 'https://images-na.ssl-images-amazon.com/images/I/41tSu0tEvNL._SX324_BO1,204,203,200_.jpg',
            'title' => 'The turn of the key',
            'description' => 'Just love this book',
            'price' => 50
        ]);
        $product->save();
        $product = new App\Product([
            'imagePath' => 'https://images-na.ssl-images-amazon.com/images/I/51C8Tg0TCaL._SX322_BO1,204,203,200_.jpg',
            'title' => 'The book thief',
            'description' => 'The best book ever wow.',
            'price' => 20
        ]);
        $product->save();
        $product = new App\Product([
            'imagePath' => 'https://images-na.ssl-images-amazon.com/images/I/51V9kCEJ8oL._SX319_BO1,204,203,200_.jpg',
            'title' => 'Witch Halloween',
            'description' => 'Everyone should read this book.',
            'price' => 30
        ]);
        $product->save();
    }
}
