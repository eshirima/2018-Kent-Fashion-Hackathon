//
//  AutoModeVC.swift
//  Fashion
//
//  Created by Emil Shirima on 1/27/18.
//  Copyright © 2018 Emil Shirima. All rights reserved.
//

import UIKit

class AutoModeVC: UIViewController
{
	var isFirstTapped: Bool = false
	var isSecondTapped: Bool = false
	var isThirdTapped: Bool = false
	
	@IBOutlet weak var firstPatternUI: UIImageView!
	@IBOutlet weak var secondPatternUI: UIImageView!
	@IBOutlet weak var thirdPatternUI: UIImageView!
	
	override func viewDidLoad()
	{
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
	{
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	@IBAction func sliderValueChanged(_ sender: UISlider)
	{
		//Set value to the nearest 50...
		print((Float)((Int)((sender.value + 25) / 50) * 50))
		sender.setValue((Float)((Int)((sender.value + 25) / 50) * 50), animated: true)
	}
	
	@IBAction func firstPatternTapped(_ sender: UITapGestureRecognizer)
	{
		print("First tap delegate called")
		
		if !isFirstTapped
		{
			isFirstTapped = true
			
			// reset all the other patterns
			isSecondTapped = false
			isThirdTapped = false
			DispatchQueue.main.async
			{
				self.firstPatternUI.image = #imageLiteral(resourceName: "pattern1-active")
				
				// set all the rest back to their default
				self.secondPatternUI.image = #imageLiteral(resourceName: "pattern2")
				self.thirdPatternUI.image = #imageLiteral(resourceName: "pattern3")
			}
		}
		else
		{
			isFirstTapped = false
			DispatchQueue.main.async
			{
				self.firstPatternUI.image = #imageLiteral(resourceName: "pattern1")
			}
		}
	}
	
	@IBAction func secondPatternTapped(_ sender: UITapGestureRecognizer)
	{
		print("Second Tap Delegate")
		if !isSecondTapped
		{
			isSecondTapped = true
			
			// reset all the other patterns
			isFirstTapped = false
			isThirdTapped = false
			DispatchQueue.main.async
			{
				self.secondPatternUI.image = #imageLiteral(resourceName: "pattern2-active")
				
				// set all the rest back to their default
				self.firstPatternUI.image = #imageLiteral(resourceName: "pattern1")
				self.thirdPatternUI.image = #imageLiteral(resourceName: "pattern3")
			}
		}
		else
		{
			isSecondTapped = false
			DispatchQueue.main.async
			{
				self.secondPatternUI.image = #imageLiteral(resourceName: "pattern2")
			}
		}
	}
	
	@IBAction func thirdPatternTapped(_ sender: UITapGestureRecognizer)
	{
		print("Third Delegate Tapped")
		if !isThirdTapped
		{
			isThirdTapped = true
			
			// reset the other patterns
			isFirstTapped = false
			isSecondTapped = false
			DispatchQueue.main.async
			{
				self.thirdPatternUI.image = #imageLiteral(resourceName: "pattern3-active")
				
				// set all the rest back to their default
				self.firstPatternUI.image = #imageLiteral(resourceName: "pattern1")
				self.secondPatternUI.image = #imageLiteral(resourceName: "pattern2")
			}
		}
		else
		{
			isThirdTapped = false
			DispatchQueue.main.async
			{
				self.thirdPatternUI.image = #imageLiteral(resourceName: "pattern3")
			}
		}
	}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
