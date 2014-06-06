//
//  CheckListViewController.swift
//  CheckList
//
//  Created by Vatsaev Aslan on 06/06/2014.
//  Copyright (c) 2014 Aslan Vatsaev. All rights reserved.
//

import UIKit

class CheckListViewController:  UIViewController,
                                UITableViewDataSource, UITextFieldDelegate{
    
    
    var tableView: UITableView!
    var textField: UITextField!
    var tableData = String[]()
    
    
    

    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //data source
        self.tableData = ["Red", "Yellow","Green", "Blue"]
        
        //Table view position
        self.tableView = UITableView(frame: CGRectMake(0, 100, self.view.bounds.size.width, self.view.bounds.height), style: UITableViewStyle.Plain)
        
        //Define new Table view cell identifier
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "myCell")
        
        //Register table view data source delegate
        self.tableView.dataSource = self
        
        //add to view
        self.view.addSubview(self.tableView)
        
        //position
        self.textField = UITextField(frame: CGRectMake(0, 0, self.view.bounds.size.width, 100))
        //background color
        self.textField.backgroundColor = UIColor.grayColor()
        //register delegate (ex: handling keyboard behaviours for this text field)
        self.textField.delegate = self
        //add to view
        self.view.addSubview(self.textField)
        
        // Do any additional setup after loading the view.
    }
    
    
    


    //datble view data source functions
    
    
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return self.tableData.count; //number of cells
    }
    
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let newCell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath)
         as UITableViewCell
        
        newCell.text = self.tableData[indexPath.row]
        
        return newCell;
    }
    
    //text field delegate functions
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
