//
//  ViewController.swift
//  tic tac toe
//
//  Created by Akshay Sharma on 14/10/17.
//  Copyright © 2017 Akshay Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buSelectEvent(_ sender: Any) {
        
        let btnSelect = sender as! UIButton
         playGame(btnSelect: btnSelect)
    }
    var ActivePlayer = 1
    var player1 = [Int]()
    var player2 = [Int]()
    
    func playGame(btnSelect : UIButton)
    {
     
        if ActivePlayer == 1{
        
            btnSelect.setTitle("X", for: UIControlState.normal)
            btnSelect.backgroundColor = UIColor(red: 102/255, green: 250/255, blue: 51/255, alpha: 0.5)
            ActivePlayer = 2
            player1.append(btnSelect.tag)
        //    print(player1)
            
        }
        
        else{
            
            btnSelect.setTitle("O", for: UIControlState.normal)
            btnSelect.backgroundColor = UIColor(red: 32/255, green: 192/255, blue: 243/255, alpha: 0.5)
            ActivePlayer = 1
            player2.append(btnSelect.tag)
          //  print(player2)
        
        }
        btnSelect.isEnabled = false
        findWinner()
    }
    
    func findWinner()
    {
    
        var winner = -1;
        
        //1st row
        if(player1.contains(1) && player1.contains(2) && player1.contains(3) )
        {
        
            winner = 1
        }
        
        if(player2.contains(1) && player2.contains(2) && player2.contains(3) )
        {
            
            winner = 2
        }
        
        
        //2nd row
        
        if(player1.contains(4) && player1.contains(5) && player1.contains(6) )
        {
            
            winner = 1
        }
        
        if(player2.contains(4) && player2.contains(5) && player2.contains(6) )
        {
            
            winner = 2
        }
        
        
        //3rd row
        
        if(player1.contains(7) && player1.contains(8) && player1.contains(9) )
        {
            
            winner = 1
        }
        
        if(player2.contains(7) && player2.contains(8) && player2.contains(9) )
        {
            
            winner = 2
        }
        
        //1st coloumn
        
        
        if(player1.contains(1) && player1.contains(4) && player1.contains(7) )
        {
            
            winner = 1
        }
        
        if(player2.contains(1) && player2.contains(4) && player2.contains(7) )
        {
            
            winner = 2
        }
        
        
        //2nd coloumn
        
        if(player1.contains(2) && player1.contains(5) && player1.contains(8) )
        {
            
            winner = 1
        }
        
        if(player2.contains(2) && player2.contains(5) && player2.contains(8) )
        {
            
            winner = 2
        }
        
        //3rd coloumn
        
        
        if(player1.contains(3) && player1.contains(6) && player1.contains(9) )
        {
            
            winner = 1
        }
        
        if(player2.contains(3) && player2.contains(6) && player2.contains(9) )
        {
            
            winner = 2
        }
        
        //diagonal 1
        
        if(player1.contains(1) && player1.contains(5) && player1.contains(9) )
        {
            
            winner = 1
        }
        
        if(player2.contains(1) && player2.contains(5) && player2.contains(9) )
        {
            
            winner = 2
        }
        
        
        //diagonal 2
        
        if(player1.contains(3) && player1.contains(5) && player1.contains(7) )
        {
            
            winner = 1
        }
        
        if(player2.contains(3) && player2.contains(5) && player2.contains(7) )
        {
            
            winner = 2
        }
        
        if winner != -1
        {
            var msg = ""
            
            if winner == 1
            {
            msg = "player 1 wins"
            }
            
            else
            {
            msg = "player 2 wins"
            }
            
            let alert = UIAlertController(title: "Winner", message: msg, preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
    }

}

