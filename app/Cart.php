<?php

namespace App;


class Cart
{
    public $items = null;
    public $totalQty = 0;
    public $totalPrice = 0;

    public function __construct($oldCart)
    {
        // if you have old cart
        if ($oldCart) {
            $this->items = $oldCart->items;
            $this->totalQty = $oldCart->totalQty;
            $this->totalPrice = $oldCart->totalPrice;
        }
    }

    public function add($item, $id)
    {
        $storedItem = ['qty' => 0, 'price' => $item->price, 'item' => $item];
        // if their are already some items
        if ($this->items) {
            // if it already have the product that is added
            if (array_key_exists($id, $this->items)) {
                // overwrite $storedItem by the item you already have
                $storedItem = $this->items[$id];
            }
        }
        $storedItem['qty']++;
        $storedItem['price'] = $item->price * $storedItem['qty'];
        // create the new id of passed product or that already exists
        $this->items[$id] = $storedItem;
        $this->totalQty++;
        $this->totalPrice += $item->price;
    }

    public function reduceByOne($id)
    {
        // dd($this->items);
        // Select the item by id and decrease the item qty by 1
        $this->items[$id]['qty']--;
        // reduce the item price 
        $this->items[$id]['price'] -= $this->items[$id]['item']['price'];

        // reduce the total quantity
        $this->totalQty--;
        // reduce the total price from the reduced item price
        $this->totalPrice -= $this->items[$id]['item']['price'];

        // if the item qty is equal or less then zero then delete that item
        if ($this->items[$id]['qty'] <= 0) {
            unset($this->items[$id]);
        }
    }

    public function removeItem($id)
    {
        // remove the totalQty by the item qty
        $this->totalQty -= $this->items[$id]['qty'];
        // remove the totalPrice by the item
        $this->totalPrice -= $this->items[$id]['price'];

        unset($this->items[$id]);
    }
}
