//
//  SwipeCollectionViewCellDelegate.swift
//  SwipeCellKit
//
//  Created by Alex Habrusevich on 11/20/17.
//

import UIKit

/**
 The `SwipeCollectionViewCellDelegate` protocol is adopted by an object that manages the display of action buttons when the cell is swiped.
 */
public protocol SwipeCollectionViewCellDelegate: class {
    /**
     Asks the delegate for the actions to display in response to a swipe in the specified item.
     
     - parameter collectionView: The collection view object which owns the cell requesting this information.
     
     - parameter indexPath: The index path of the item.
     
     - parameter orientation: The side of the cell requesting this information.
     
     - returns: An array of `SwipeAction` objects representing the actions for the item. Each action you provide is used to create a button that the user can tap.  Returning `nil` will prevent swiping for the supplied orientation.
     */
    func collectionView(_ collectionView: UICollectionView, editActionsForItemAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]?
    
    /**
     Asks the delegate for the display options to be used while presenting the action buttons.
     
     - parameter collectionView: The collection view object which owns the cell requesting this information.
     
     - parameter indexPath: The index path of the item.
     
     - parameter orientation: The side of the cell requesting this information.
     
     - returns: A `SwipeTableOptions` instance which configures the behavior of the action buttons.
     
     - note: If not implemented, a default `SwipeTableOptions` instance is used.
     */
    func collectionView(_ collectionView: UICollectionView, editActionsOptionsForItemAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeTableOptions
    
    /**
     Tells the delegate that the table view is about to go into editing mode.
     
     - parameter collectionView: The collection view object providing this information.
     
     - parameter indexPath: The index path of the item.
     
     - parameter orientation: The side of the cell.
     */
    func collectionView(_ collectionView: UICollectionView, willBeginEditingItemAt indexPath: IndexPath, for orientation: SwipeActionsOrientation)
    
    /**
     Tells the delegate that the table view has left editing mode.
     
     - parameter collectionView: The collection view object providing this information.
     
     - parameter indexPath: The index path of the item.
     
     - parameter orientation: The side of the cell.
     */
    func collectionView(_ collectionView: UICollectionView, didEndEditingItemAt indexPath: IndexPath?, for orientation: SwipeActionsOrientation)
}

/**
 Default implementation of `SwipeTableViewCellDelegate` methods
 */
public extension SwipeCollectionViewCellDelegate {
    func collectionView(_ collectionView: UICollectionView, editActionsOptionsForItemAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeTableOptions {
        return SwipeTableOptions()
    }
    
    func collectionView(_ collectionView: UICollectionView, willBeginEditingItemAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) {}
    
    func collectionView(_ collectionView: UICollectionView, didEndEditingItemAt indexPath: IndexPath?, for orientation: SwipeActionsOrientation) {}
}
