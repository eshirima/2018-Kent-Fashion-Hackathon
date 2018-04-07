//
//  ViewController.swift
//  Fashion
//
//  Created by Emil Shirima on 1/27/18.
//  Copyright © 2018 Emil Shirima. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
	let defaultLink: String = "http://192.168.1.122/"
	
	@IBOutlet weak var webView: UIWebView!
	
	override func viewDidLoad()
	{
		super.viewDidLoad()
	}

	override func didReceiveMemoryWarning()
	{
		super.didReceiveMemoryWarning()
	}

	@IBAction func onBtnAction(_ sender: UIButton)
	{
		print("ON button pressed")
		let urlRequest: URLRequest = URLRequest(url: URL(string: defaultLink + "led/1")!)
		webView.loadRequest(urlRequest)
	}
	
	@IBAction func offBtnAction(_ sender: UIButton)
	{
		print("OFF button pressed")
		let urlRequest: URLRequest = URLRequest(url: URL(string: defaultLink + "led/0")!)
		webView.loadRequest(urlRequest)
	}
}

