//
//  ViewController.swift
//  Scheduler 3.0
//
//  Created by Kyle Scholl on 11/2/15.
//  Copyright © 2015 Patronus LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet var showScheduleButton: UIButton!
	@IBOutlet var netClassroomButton: UIButton!
	@IBOutlet var weatherButton: UIButton!
	
	@IBOutlet var orangeButton: UIButton!
	@IBOutlet var carrotButton: UIButton!
	@IBOutlet var pumpkinButton: UIButton!
	@IBOutlet var greenSeaButton: UIButton!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		print("viewDidLoad()")
	}

	func setButtonStyles() {
		
		let ssb = showScheduleButton
		let ncb = netClassroomButton
		let wb = weatherButton
		
		ssb.layer.cornerRadius = 10.0
		ncb.layer.cornerRadius = 10.0
		wb.layer.cornerRadius = 10.0

		ssb.setTitle("Schedule", forState: UIControlState.Normal)
		ncb.setTitle("NetClassroom", forState: UIControlState.Normal)
		wb.setTitle("Weater", forState: UIControlState.Normal)
		
		ssb.titleLabel!.font = UIFont(name: "Helvetica Neue Light", size: 50.0)
		ncb.titleLabel!.font = UIFont(name: "Helvetica Neue Light", size: 50.0)
		wb.titleLabel!.font = UIFont(name: "Helvetica Neue Light", size: 50.0)
	}
	
	
	
	







	@IBAction func showScheduleButtonPressed(sender: UIButton) {
		NSLog("showScheduleButtonPressed")
		
		self.performSegueWithIdentifier("SchedulerSegue", sender: self)
	}
	
	@IBAction func netClassroomButton(sender: UIButton) {
		NSLog("netClassroomButton")
		self.performSegueWithIdentifier("NetClassroomSegue", sender: self)
	}
	
	
	
	
	
	
/*
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		
		// NetClassroomViewController
		if segue.identifier == "NetClassroomSegue" {
		}

	}
*/


	override func viewWillAppear(animated: Bool)  {
		super.viewWillAppear(animated)
		print("viewWillAppear()")
		
		//self.view.backgroundColor = UIColor.wetAsphaltColor()
		setButtonStyles()
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}





