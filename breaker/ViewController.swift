//
//  ViewController.swift
//  breaker
//
//  Created by Devraj Mehta on 9/27/16.
//  Copyright © 2016 Devraj Mehta. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    let intervals = (1...12)
        .map{$0 * 5}
        .map{String($0)}

    @IBOutlet weak var intervalPicker: UIPickerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.intervalPicker.dataSource = self
        self.intervalPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // UIPicker impl

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return intervals.count;
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return intervals[row]
    }

    // Actions

    @IBAction func startButton(_ sender: UIButton) {
        sender.setTitle("Stop Working", for: UIControlState.normal)
    }
}

