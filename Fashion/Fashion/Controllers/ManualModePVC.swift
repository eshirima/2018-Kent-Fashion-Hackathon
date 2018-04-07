//
//  ManualModeVC.swift
//  Fashion
//
//  Created by Emil Shirima on 1/27/18.
//  Copyright © 2018 Emil Shirima. All rights reserved.
//

import UIKit

class ManualModePVC: UIPageViewController
{
	lazy var controllers: [UIViewController] = 
	{
		return [vcInstance(name: "frontBodyVC"), vcInstance(name: "backBodyVC")]
	}()
	
    override func viewDidLoad()
	{
        super.viewDidLoad()
		
		self.dataSource = self
		self.delegate = self
		
		if let firstVC = controllers.first
		{
			setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
		}
	}
	
	private func vcInstance(name: String)-> UIViewController
	{
		return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: name)
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

extension ManualModePVC: UIPageViewControllerDelegate
{
	func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
	{
		guard let vcIndex = controllers.index(of: viewController) else { return nil }
		
		let previousIndex = vcIndex - 1
		guard previousIndex >= 0 else { return controllers.last }
		guard controllers.count > previousIndex else { return nil }
		
		return controllers[previousIndex]
	}
	
	func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
	{
		guard let vcIndex = controllers.index(of: viewController) else { return nil }
		
		let nextIndex = vcIndex + 1
		guard nextIndex < controllers.count else { return controllers.first }
		guard controllers.count > nextIndex else { return nil }
		
		return controllers[nextIndex]
	}
}

extension ManualModePVC: UIPageViewControllerDataSource
{
	func presentationCount(for pageViewController: UIPageViewController) -> Int
	{
		return controllers.count
	}
	
	func presentationIndex(for pageViewController: UIPageViewController) -> Int
	{
		guard let firstVC = controllers.first, let firstIndex = controllers.index(of: firstVC) else { return 0 }
		
		return firstIndex
	}
}
