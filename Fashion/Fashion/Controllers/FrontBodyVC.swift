//
//  FrontBodyVC.swift
//  Fashion
//
//  Created by Emil Shirima on 1/27/18.
//  Copyright © 2018 Emil Shirima. All rights reserved.
//

import UIKit

class FrontBodyVC: UIViewController
{
	@IBOutlet weak var frontRight1: UIImageView!
	@IBOutlet weak var frontLeft1: UIImageView!
	@IBOutlet weak var frontRight2: UIImageView!
	@IBOutlet weak var frontLeft2: UIImageView!
	@IBOutlet weak var frontRight3: UIImageView!
	@IBOutlet weak var frontLeft3: UIImageView!
	@IBOutlet weak var frontRight4: UIImageView!
	@IBOutlet weak var frontLeft4: UIImageView!
	@IBOutlet weak var frontRight5: UIImageView!
	@IBOutlet weak var frontLeft5: UIImageView!
	
    override func viewDidLoad()
	{
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
	{
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	func display(image: UIImage, on view: UIImageView)
	{
		DispatchQueue.main.async
		{
			view.image = image
		}
	}
	
	func display(image: UIImage, on views: [UIImageView])
	{
		DispatchQueue.main.async
		{
			views[0].image = image
			views[1].image = image
		}
	}
	
	// this handles all the pin 1 connections
	@IBAction func frontRight1Tapped(_ sender: UITapGestureRecognizer)
	{
		if frontRight1.image == #imageLiteral(resourceName: "motor-off") // off
		{
			display(image: #imageLiteral(resourceName: "motor-low"), on: [frontRight1, frontLeft1]) // turn to low
		}
		else if frontRight1.image == #imageLiteral(resourceName: "motor-low") // low
		{
			display(image: #imageLiteral(resourceName: "motor-medium"), on: [frontRight1, frontLeft1]) // turn to medium
		}
		else if frontRight1.image == #imageLiteral(resourceName: "motor-medium") // medium
		{
			display(image: #imageLiteral(resourceName: "motor-high"), on: [frontRight1, frontLeft1]) // turn to high
		}
		else
		{
			display(image: #imageLiteral(resourceName: "motor-off"), on: [frontRight1, frontLeft1])
		}
	}
	
	// pin 2 connections handler
	@IBAction func frontRight2Tapped(_ sender: UITapGestureRecognizer)
	{
		if frontRight2.image == #imageLiteral(resourceName: "motor-off")
		{
			display(image: #imageLiteral(resourceName: "motor-low"), on: [frontRight2, frontLeft2])
		}
		else if frontRight2.image == #imageLiteral(resourceName: "motor-low")
		{
			display(image: #imageLiteral(resourceName: "motor-medium"), on: [frontRight2, frontLeft2])
		}
		else if frontRight2.image == #imageLiteral(resourceName: "motor-medium")
		{
			display(image: #imageLiteral(resourceName: "motor-high"), on: [frontRight2, frontLeft2])
		}
		else
		{
			display(image: #imageLiteral(resourceName: "motor-off"), on: [frontRight2, frontLeft2])
		}
	}
	
	@IBAction func frontRight3Tapped(_ sender: UITapGestureRecognizer)
	{
		if frontRight3.image == #imageLiteral(resourceName: "motor-off")
		{
			display(image: #imageLiteral(resourceName: "motor-low"), on: [frontRight3, frontLeft3])
		}
		else if frontRight3.image == #imageLiteral(resourceName: "motor-low")
		{
			display(image: #imageLiteral(resourceName: "motor-medium"), on: [frontRight3, frontLeft3])
		}
		else if frontRight3.image == #imageLiteral(resourceName: "motor-medium")
		{
			display(image: #imageLiteral(resourceName: "motor-high"), on: [frontRight3, frontLeft3])
		}
		else
		{
			display(image: #imageLiteral(resourceName: "motor-off"), on: [frontRight3, frontLeft3])
		}
	}
	
	@IBAction func frontRight4Tapped(_ sender: UITapGestureRecognizer)
	{
		if frontRight4.image == #imageLiteral(resourceName: "motor-off")
		{
			display(image: #imageLiteral(resourceName: "motor-low"), on: [frontRight4, frontLeft4])
		}
		else if frontRight4.image == #imageLiteral(resourceName: "motor-low")
		{
			display(image: #imageLiteral(resourceName: "motor-medium"), on: [frontRight4, frontLeft4])
		}
		else if frontRight4.image == #imageLiteral(resourceName: "motor-medium")
		{
			display(image: #imageLiteral(resourceName: "motor-high"), on: [frontRight4, frontLeft4])
		}
		else
		{
			display(image: #imageLiteral(resourceName: "motor-off"), on: [frontRight4, frontLeft4])
		}
	}
	
	@IBAction func frontRight5Tapped(_ sender: UITapGestureRecognizer)
	{
		if frontRight5.image == #imageLiteral(resourceName: "motor-off")
		{
			display(image: #imageLiteral(resourceName: "motor-low"), on: [frontRight5, frontLeft5])
		}
		else if frontRight5.image == #imageLiteral(resourceName: "motor-low")
		{
			display(image: #imageLiteral(resourceName: "motor-medium"), on: [frontRight5, frontLeft5])
		}
		else if frontRight5.image == #imageLiteral(resourceName: "motor-medium")
		{
			display(image: #imageLiteral(resourceName: "motor-high"), on: [frontRight5, frontLeft5])
		}
		else
		{
			display(image: #imageLiteral(resourceName: "motor-off"), on: [frontRight5, frontLeft5])
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
