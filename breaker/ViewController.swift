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

    // Outlets
    @IBOutlet weak var intervalPicker: UIPickerView!
    @IBOutlet weak var timerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.intervalPicker.dataSource = self
        self.intervalPicker.delegate = self
        //default timer is 25min, TODO save users setting
        self.intervalPicker.selectRow(5,inComponent: 0, animated: false)
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
    @IBAction func toggleButton(_ sender: UIButton) {
        sender.setTitle("TODO toggle logic", for: UIControlState.normal)
        sender.setTitleColor(self.view.tintColor, for: UIControlState.normal)
    }
    @IBAction func resetButton(_ sender: UIButton) {
        sender.setTitle("TODO reset timer", for: UIControlState.normal)
    }
}

