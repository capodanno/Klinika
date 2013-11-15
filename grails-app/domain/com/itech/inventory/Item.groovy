package com.itech.inventory

import enums.ItemType

class Item {

	String name
	String description
	int currentQuantity
	int minStockLevel
	Date expiryDate
	ItemType itemType
	double retailPrice
	boolean isActive
	boolean hasReachedMinimum
	boolean newInstance
	
    static constraints = {
		
    }
}
