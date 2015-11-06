//
//  SchedulerViewController.swift
//  Scheduler 3.0
//
//  Created by Kyle Scholl on 11/2/15.
//  Copyright © 2015 Patronus LLC. All rights reserved.
//

import UIKit

protocol SchedulerViewControllerDelegate {
	func hehe(hehe: SchedulerViewController, lol: String)
}

class SchedulerViewController: UIViewController, EditScheduleViewControllerDelegate {
	
	var delegate: SchedulerViewControllerDelegate?
	
	
	func aBlockController(aBlockController: EditScheduleViewController, aBlockItem: String){
		
		print("aBlockItem: \(aBlockItem)")
		
		let numOfBlocks: Int = (aBlockTextViewCollection.count)
		print("numOfABlocks: \(numOfBlocks)")
		
		if aBlockItem == "" {
			print("Text entered was blank")
		} else {
			let defaults = NSUserDefaults.standardUserDefaults()
			defaults.setValue(aBlockItem, forKey: "ABlock")
			defaults.synchronize()
			
			for index in 0..<numOfBlocks {
				aBlockTextViewCollection[index].text = aBlockItem
				print("index: \(index)")
			}
		}
	}
	
	func bBlockController(bBlockController: EditScheduleViewController, bBlockItem: String){
		
		let numOfBlocks: Int = bBlockTextViewCollection.count
		
		if bBlockItem == "" {
			print("Text entered was blank")
		} else {
			let defaults = NSUserDefaults.standardUserDefaults()
			defaults.setValue(bBlockItem, forKey: "BBlock")
			defaults.synchronize()
			
			for index in 0..<numOfBlocks {
				bBlockTextViewCollection[index].text = bBlockItem
			}
		}
	}
	
	func cBlockController(cBlockController: EditScheduleViewController, cBlockItem: String){
		
		let numOfBlocks: Int = cBlockTextViewCollection.count
		print("numOfABlocks: \(numOfBlocks)")
		
		if cBlockItem == "" {
			print("Text entered was blank")
		} else {
			let defaults = NSUserDefaults.standardUserDefaults()
			defaults.setValue(cBlockItem, forKey: "CBlock")
			defaults.synchronize()
			
			for index in 0..<numOfBlocks {
				cBlockTextViewCollection[index].text = cBlockItem
			}
		}
	}
	
	func dBlockController(dBlockController: EditScheduleViewController, dBlockItem: String){
		
		let numOfBlocks: Int = dBlockTextViewCollection.count
		if dBlockItem == "" {
			print("Text entered was blank")
		} else {
			let defaults = NSUserDefaults.standardUserDefaults()
			defaults.setValue(dBlockItem, forKey: "DBlock")
			defaults.synchronize()
			
			for index in 0..<numOfBlocks {
				dBlockTextViewCollection[index].text = dBlockItem
			}
		}
	}
	
	func eBlockController(eBlockController: EditScheduleViewController, eBlockItem: String){
		
		let numOfBlocks: Int = eBlockTextViewCollection.count
		if eBlockItem == "" {
			print("Text entered was blank")
		} else {
			let defaults = NSUserDefaults.standardUserDefaults()
			defaults.setValue(eBlockItem, forKey: "EBlock")
			defaults.synchronize()
			
			for index in 0..<numOfBlocks {
				eBlockTextViewCollection[index].text = eBlockItem
			}
		}
	}
	
	func fBlockController(fBlockController: EditScheduleViewController, fBlockItem: String){
		
		let numOfBlocks: Int = fBlockTextViewCollection.count
		if fBlockItem == "" {
			print("Text entered was blank")
		} else {
			let defaults = NSUserDefaults.standardUserDefaults()
			defaults.setValue(fBlockItem, forKey: "FBlock")
			defaults.synchronize()
			
			for index in 0..<numOfBlocks {
				fBlockTextViewCollection[index].text = fBlockItem
			}
		}
	}
	
	func gBlockController(gBlockController: EditScheduleViewController, gBlockItem: String){
		
		let numOfBlocks: Int = gBlockTextViewCollection.count
		
		if gBlockItem == "" {
			print("Text entered was blank")
		} else {
			let defaults = NSUserDefaults.standardUserDefaults()
			defaults.setValue(gBlockItem, forKey: "GBlock")
			defaults.synchronize()
			
			for index in 0..<numOfBlocks {
				gBlockTextViewCollection[index].text = gBlockItem
			}
		}
	}
	
	
	
	
	                  ////////////////
    	            ////////////////////
                  ////////////////////////
                ////////////////////////////
			  ////////////////////////////////
            ////////////////////////////////////
          ////////////////////////////////////////
        ////////////////////////////////////////////
      ////////////////////////////////////////////////
    ////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////
////////////////// OUTLET COLLECTIONS //////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
	

////////////////////////////////////////////////////////////
////////////// LETTER BLOCKS (diagonal) ////////////////////
	// Robotics
	@IBOutlet var aBlockTextViewCollection: [UITextView]!
	
	// Coding
	@IBOutlet var bBlockTextViewCollection: [UITextView]!
	
	// Free / college counseling
	@IBOutlet var cBlockTextViewCollection: [UITextView]!
	
	// English
	@IBOutlet var dBlockTextViewCollection: [UITextView]!
	
	// Science
	@IBOutlet var eBlockTextViewCollection: [UITextView]!
	
	// Math
	@IBOutlet var fBlockTextViewCollection: [UITextView]!
	
	// History
	@IBOutlet var gBlockTextViewCollection: [UITextView]!
	
	
	// DAY COLLECTIONS (vertical) //
	// Day 1
	@IBOutlet var dayOneGroup: [UITextView]!
	
	@IBOutlet var dayOneLabelGroup: [UILabel]!
	
	// Day 2
	@IBOutlet var dayTwoGroup: [UITextView]!
	
	@IBOutlet var dayTwoLabelGroup: [UILabel]!
	
	// Day 3
	@IBOutlet var dayThreeGroup: [UITextView]!
	
	@IBOutlet var dayThreeLabelGroup: [UILabel]!
	
	// Day 4
	@IBOutlet var dayFourGroup: [UITextView]!
	
	@IBOutlet var dayFourLabelGroup: [UILabel]!
	
	// Day 5
	@IBOutlet var dayFiveGroup: [UITextView]!
	
	@IBOutlet var dayFiveLabelGroup: [UILabel]!
	
	// Day 6
	@IBOutlet var daySixGroup: [UITextView]!
	
	@IBOutlet var daySixLabelGroup: [UILabel]!
	
	// Day 7
	@IBOutlet var daySevenGroup: [UITextView]!
	
	@IBOutlet var daySevenLabelGroup: [UILabel]!
	
	//	Just realized that I could've just made an even and od groups instead.....oh well
	
	
	// BUTTON OUTLETS
	
	@IBOutlet var dayOneButton: UIButton!
	
	@IBOutlet var dayTwoButton: UIButton!
	
	@IBOutlet var dayThreeButton: UIButton!
	
	@IBOutlet var dayFourButton: UIButton!
	
	@IBOutlet var dayFiveButton: UIButton!
	
	@IBOutlet var daySixButton: UIButton!
	
	@IBOutlet var daySevenButton: UIButton!
	
	// ALL LABELS
	
	@IBOutlet var allLabelsCollection: [UILabel]!
	
	
	
	
	
	
	
	func setVerticalAndHorizontalPositionForText() {
		
		let aNumIndex : Int = aBlockTextViewCollection.count
		let bNumIndex : Int = bBlockTextViewCollection.count
		let cNumIndex : Int = cBlockTextViewCollection.count
		let dNumIndex : Int = dBlockTextViewCollection.count
		let eNumIndex : Int = eBlockTextViewCollection.count
		let fNumIndex : Int = fBlockTextViewCollection.count
		let gNumIndex : Int = gBlockTextViewCollection.count
		
		// A
		for index in 0..<aNumIndex {
			aBlockTextViewCollection[index].textAlignment = .Center
		}
		
		// B
		for index in 0..<bNumIndex {
			bBlockTextViewCollection[index].textAlignment = .Center
		}
		
		// C
		for index in 0..<cNumIndex {
			cBlockTextViewCollection[index].textAlignment = .Center
		}
		
		// D
		for index in 0..<dNumIndex {
			dBlockTextViewCollection[index].textAlignment = .Center
		}
		
		// E
		for index in 0..<eNumIndex {
			eBlockTextViewCollection[index].textAlignment = .Center
		}
		
		// F
		for index in 0..<fNumIndex {
			fBlockTextViewCollection[index].textAlignment = .Center
		}
		
		// G
		for index in 0..<gNumIndex {
			gBlockTextViewCollection[index].textAlignment = .Center
		}
	}
	
	
	
	
	// Clears the schedule
	@IBAction func clearSchedule(sender: UIBarButtonItem) {
		//Create the AlertController
		let actionSheetController: UIAlertController = UIAlertController(title: "Clear",
			message: "Are you sure that you want to clear the schedule?",
			preferredStyle: .Alert)
		
		//Create and add the Cancel action
		let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
			//Do some stuff
		}
		actionSheetController.addAction(cancelAction)
		
		//Create and add an option action
		let nextAction: UIAlertAction = UIAlertAction(title: "Yes, clear", style: UIAlertActionStyle.Default) { action -> Void in
			//self.setTextViewText("")
			self.setTextToDefault()
			
		}
		actionSheetController.addAction(nextAction)
		
		//Present the AlertController
		self.presentViewController(actionSheetController, animated: true, completion: nil)
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	func setEditingForViews(boolForEditing : Bool) {
		for index in 0..<6 {
			aBlockTextViewCollection[index].editable = boolForEditing
			bBlockTextViewCollection[index].editable = boolForEditing
			cBlockTextViewCollection[index].editable = boolForEditing
			dBlockTextViewCollection[index].editable = boolForEditing
			eBlockTextViewCollection[index].editable = boolForEditing
			fBlockTextViewCollection[index].editable = boolForEditing
			gBlockTextViewCollection[index].editable = boolForEditing
		}
	}
	
	// Edits the schedule
	@IBAction func editSchedule(sender: UIBarButtonItem) {
		//Create the AlertController
		let actionSheetController: UIAlertController = UIAlertController(title: "Edit",
			message: "Are you sure that you want to edit the schedule?",
			preferredStyle: .Alert)
		
		//Create and add the Cancel action
		let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
			self.setEditingForViews(false)
		}
		
		actionSheetController.addAction(cancelAction)
		
		//let plot = CGRectMake(5, 20, 320, 400)
		let alert : FUIAlertView = FUIAlertView()
		alert.title = "Alert"
		alert.message = "Here's a message"
		alert.addButtonWithTitle("Understod")
		alert.show()
		
		
		
		//Create and add an option action
		let nextAction: UIAlertAction = UIAlertAction(title: "Edit", style: UIAlertActionStyle.Default) { action -> Void in
			let editMethodSheetController : UIAlertController = UIAlertController(title: "", message: "Would you like to edit the block groups or each individually?", preferredStyle: .Alert)
			
			
			// Individually
			let individualEditMethod: UIAlertAction = UIAlertAction(title: "Individually", style: .Cancel) {
				action -> Void in
				self.setEditingForViews(true)
			}
			
			
			
			editMethodSheetController.addAction(individualEditMethod)
			
			
			// Segue to ViewController
			let blockEditMethod: UIAlertAction = UIAlertAction(title: "Groups", style: UIAlertActionStyle.Default) {
				action -> Void in
				self.performSegueWithIdentifier("editScheduleViewController", sender: self)
			}
			
			editMethodSheetController.addAction(blockEditMethod)
			
			self.presentViewController(editMethodSheetController, animated: true, completion: nil)
		}
		
		actionSheetController.addAction(nextAction)
		
		
		//Present the AlertController
		self.presentViewController(actionSheetController, animated: true, completion: nil)
	}
	
	
	
	
	
	
	@IBAction func back(sender: UIBarButtonItem) {
		self.dismissViewControllerAnimated(true, completion: nil)
	}
	
	func setTextViewText(someString: String) {
		
		for index in 0..<6 {
			aBlockTextViewCollection[index].text = someString
			bBlockTextViewCollection[index].text = someString
			cBlockTextViewCollection[index].text = someString
			dBlockTextViewCollection[index].text = someString
			eBlockTextViewCollection[index].text = someString
			fBlockTextViewCollection[index].text = someString
			gBlockTextViewCollection[index].text = someString
		}
	}
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		
		// SchedulerViewController
		if segue.identifier == "EditScheduleViewController" {
			let navigationController = segue.destinationViewController as? UINavigationController
			let editScheduleViewController = navigationController?.topViewController as? EditScheduleViewController
			
			if let viewController = editScheduleViewController {
				viewController.delegate = self
			}
		}
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()
		NSLog("SchedulerViewController: viewDidLoad()")
		
		setEditingForViews(false)
    }
	
	override func viewWillAppear(animated: Bool) {
		setTextToDefault()
		initializeAllUIElements()
		
		self.view.backgroundColor = UIColor.wetAsphaltColor()
	}
	
	func setTextToDefault() {
		
		let aNumIndex : Int = aBlockTextViewCollection.count
		let bNumIndex : Int = bBlockTextViewCollection.count
		let cNumIndex : Int = cBlockTextViewCollection.count
		let dNumIndex : Int = dBlockTextViewCollection.count
		let eNumIndex : Int = eBlockTextViewCollection.count
		let fNumIndex : Int = fBlockTextViewCollection.count
		let gNumIndex : Int = gBlockTextViewCollection.count
		
		// A
		for index in 0..<aNumIndex {
			aBlockTextViewCollection[index].text = "A"
		}
		
		// B
		for index in 0..<bNumIndex {
			bBlockTextViewCollection[index].text = "B"
		}
		
		// C
		for index in 0..<cNumIndex {
			cBlockTextViewCollection[index].text = "C"
		}
		
		// D
		for index in 0..<dNumIndex {
			dBlockTextViewCollection[index].text = "D"
		}
		
		// E
		for index in 0..<eNumIndex {
			eBlockTextViewCollection[index].text = "E"
		}
		
		// F
		for index in 0..<fNumIndex {
			fBlockTextViewCollection[index].text = "F"
		}
		
		// G
		for index in 0..<gNumIndex {
			gBlockTextViewCollection[index].text = "G"
		}
	}
	

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	
	
	



////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
///////////////////////////// The following is all /////////////////////////////
/////////////////////////// styling and customization //////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
	
	
	@IBOutlet var navigationBar: UINavigationItem!
	
	@IBOutlet var backButton: UINavigationItem!
	
	@IBOutlet var clearButton: UIBarButtonItem!
	
	@IBOutlet var editButton: UIBarButtonItem!
	
	
	
	
	func initializeAllUIElements() {
		
		let textColor : UIColor = UIColor.cloudsColor()
		let backColor : UIColor = UIColor.wetAsphaltColor()
		
		// Sets the textViews
	/*
		for index in 0..<6 {
			var elem : UITextView
			
			elem = dayOneGroup[index]
			elem.backgroundColor = UIColor.wetAsphaltColor()
			elem.textColor = textColor
			
			elem = dayTwoGroup[index]
			elem.backgroundColor = UIColor.midnightBlueColor()
			elem.textColor = textColor
		
			elem = dayThreeGroup[index]
			elem.backgroundColor = UIColor.wetAsphaltColor()
			elem.textColor = textColor
			
			elem = dayFourGroup[index]
			elem.backgroundColor = UIColor.midnightBlueColor()
			elem.textColor = textColor
			
			elem = dayFiveGroup[index]
			elem.backgroundColor = UIColor.wetAsphaltColor()
			elem.textColor = textColor
			
			elem = daySixGroup[index]
			elem.backgroundColor = UIColor.midnightBlueColor()
			elem.textColor = textColor
			
			elem = daySevenGroup[index]
			elem.backgroundColor = UIColor.wetAsphaltColor()
			elem.textColor = textColor
		}
	*/
		
		for index in 0..<6 {
			var elem : UITextView
			var curElem : UITextView
			
			elem = dayOneGroup[index]
			//elem.backgroundColor = backColor
			elem.textColor = textColor
			
			elem = dayTwoGroup[index]
			//elem.backgroundColor = backColor
			elem.textColor = textColor
			
			elem = dayThreeGroup[index]
			//elem.backgroundColor = backColor
			elem.textColor = textColor
			
			elem = dayFourGroup[index]
			//elem.backgroundColor = backColor
			elem.textColor = textColor
			
			curElem = dayFiveGroup[index]
			elem = curElem
			//elem.backgroundColor = backColor
			elem.textColor = textColor
			
			elem = daySixGroup[index]
			//elem.backgroundColor = backColor
			elem.textColor = textColor
			
			elem = daySevenGroup[index]
			////elem.backgroundColor = backColor
			elem.textColor = textColor
		}
		

		for index in 0..<allLabelsCollection.count {
			//allLabelsCollection[index].backgroundColor = backColor
			
			allLabelsCollection[index].textColor = textColor
			allLabelsCollection[index].font = UIFont(name: "Helvetica Neue Thin", size: 12.0)
		}
	}
	
	
	func customizeBarButtons() {
		
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
