//
//  BackBodyVC.swift
//  Fashion
//
//  Created by Emil Shirima on 1/27/18.
//  Copyright © 2018 Emil Shirima. All rights reserved.
//

import UIKit

class BackBodyVC: UIViewController
{
	@IBOutlet weak var backLeft1: UIImageView!
	@IBOutlet weak var backRight1: UIImageView!
	@IBOutlet weak var backLeft2: UIImageView!
	@IBOutlet weak var backRight2: UIImageView!
	@IBOutlet weak var backLeft3: UIImageView!
	@IBOutlet weak var backRight3: UIImageView!
	@IBOutlet weak var backLeft4: UIImageView!
	@IBOutlet weak var backRight4: UIImageView!
	@IBOutlet weak var backLeft5: UIImageView!
	@IBOutlet weak var backRight5: UIImageView!
	@IBOutlet weak var backLeft6: UIImageView!
	@IBOutlet weak var backRight6: UIImageView!
	
    override func viewDidLoad()
	{
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
	{
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	func display(image: UIImage, on views: [UIImageView])
	{
		DispatchQueue.main.async
			{
				views[0].image = image
				views[1].image = image
		}
	}
	
	@IBAction func backLeft1Tapped(_ sender: UITapGestureRecognizer)
	{
		if backLeft1.image == #imageLiteral(resourceName: "motor-off") // off
		{
			display(image: #imageLiteral(resourceName: "motor-low"), on: [backLeft1, backRight1]) // turn to low
		}
		else if backLeft1.image == #imageLiteral(resourceName: "motor-low") // low
		{
			display(image: #imageLiteral(resourceName: "motor-medium"), on: [backLeft1, backRight1]) // turn to medium
		}
		else if backLeft1.image == #imageLiteral(resourceName: "motor-medium") // medium
		{
			display(image: #imageLiteral(resourceName: "motor-high"), on: [backLeft1, backRight1]) // turn to high
		}
		else
		{
			display(image: #imageLiteral(resourceName: "motor-off"), on: [backLeft1, backRight1])
		}
	}
	
	@IBAction func backLeft2Tapped(_ sender: UITapGestureRecognizer)
	{
		if backLeft2.image == #imageLiteral(resourceName: "motor-off") // off
		{
			display(image: #imageLiteral(resourceName: "motor-low"), on: [backLeft2, backRight2]) // turn to low
		}
		else if backLeft2.image == #imageLiteral(resourceName: "motor-low") // low
		{
			display(image: #imageLiteral(resourceName: "motor-medium"), on: [backLeft2, backRight2]) // turn to medium
		}
		else if backLeft2.image == #imageLiteral(resourceName: "motor-medium") // medium
		{
			display(image: #imageLiteral(resourceName: "motor-high"), on: [backLeft2, backRight2]) // turn to high
		}
		else
		{
			display(image: #imageLiteral(resourceName: "motor-off"), on: [backLeft2, backRight2])
		}
	}
	
	@IBAction func backLeft3Tapped(_ sender: UITapGestureRecognizer)
	{
		if backLeft3.image == #imageLiteral(resourceName: "motor-off") // off
		{
			display(image: #imageLiteral(resourceName: "motor-low"), on: [backLeft3, backRight3]) // turn to low
		}
		else if backLeft3.image == #imageLiteral(resourceName: "motor-low") // low
		{
			display(image: #imageLiteral(resourceName: "motor-medium"), on: [backLeft3, backRight3]) // turn to medium
		}
		else if backLeft3.image == #imageLiteral(resourceName: "motor-medium") // medium
		{
			display(image: #imageLiteral(resourceName: "motor-high"), on: [backLeft3, backRight3]) // turn to high
		}
		else
		{
			display(image: #imageLiteral(resourceName: "motor-off"), on: [backLeft3, backRight3])
		}
	}
	
	@IBAction func backLeft4Tapped(_ sender: UITapGestureRecognizer)
	{
		if backLeft4.image == #imageLiteral(resourceName: "motor-off") // off
		{
			display(image: #imageLiteral(resourceName: "motor-low"), on: [backLeft4, backRight4]) // turn to low
		}
		else if backLeft4.image == #imageLiteral(resourceName: "motor-low") // low
		{
			display(image: #imageLiteral(resourceName: "motor-medium"), on: [backLeft4, backRight4]) // turn to medium
		}
		else if backLeft4.image == #imageLiteral(resourceName: "motor-medium") // medium
		{
			display(image: #imageLiteral(resourceName: "motor-high"), on: [backLeft4, backRight4]) // turn to high
		}
		else
		{
			display(image: #imageLiteral(resourceName: "motor-off"), on: [backLeft4, backRight4])
		}
	}
	
	@IBAction func backLeft5Tapped(_ sender: UITapGestureRecognizer)
	{
		if backLeft5.image == #imageLiteral(resourceName: "motor-off") // off
		{
			display(image: #imageLiteral(resourceName: "motor-low"), on: [backLeft5, backRight5]) // turn to low
		}
		else if backLeft5.image == #imageLiteral(resourceName: "motor-low") // low
		{
			display(image: #imageLiteral(resourceName: "motor-medium"), on: [backLeft5, backRight5]) // turn to medium
		}
		else if backLeft5.image == #imageLiteral(resourceName: "motor-medium") // medium
		{
			display(image: #imageLiteral(resourceName: "motor-high"), on: [backLeft5, backRight5]) // turn to high
		}
		else
		{
			display(image: #imageLiteral(resourceName: "motor-off"), on: [backLeft5, backRight5])
		}
	}
	
	@IBAction func backLeft6Tapped(_ sender: UITapGestureRecognizer)
	{
		if backLeft6.image == #imageLiteral(resourceName: "motor-off") // off
		{
			display(image: #imageLiteral(resourceName: "motor-low"), on: [backLeft6, backRight6]) // turn to low
		}
		else if backLeft6.image == #imageLiteral(resourceName: "motor-low") // low
		{
			display(image: #imageLiteral(resourceName: "motor-medium"), on: [backLeft6, backRight6]) // turn to medium
		}
		else if backLeft6.image == #imageLiteral(resourceName: "motor-medium") // medium
		{
			display(image: #imageLiteral(resourceName: "motor-high"), on: [backLeft6, backRight6]) // turn to high
		}
		else
		{
			display(image: #imageLiteral(resourceName: "motor-off"), on: [backLeft6, backRight6])
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
