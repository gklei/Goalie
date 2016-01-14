//
//  BaseCharacterView.swift
//  Goalie
//
//  Created by Gregory Klein on 1/14/16.
//  Copyright © 2016 Incipia. All rights reserved.
//

import UIKit

enum GoalieCharacter
{
   case Goalie, Unknown
   
   func drawRect(rect: CGRect, withPriority priority: TaskPriority)
   {
      switch self {
      case .Goalie: _drawGoalieCharacterWithPriority(priority)
      case .Unknown: _drawBlueRect(rect)
      }
   }
   
   private func _drawBlueRect(rect: CGRect)
   {
      UIColor.blueColor().setFill()
      UIRectFill(rect)
   }
   
   private func _drawGoalieCharacterWithPriority(priority: TaskPriority)
   {
      let bgColor = UIColor(priority: priority, headComponent: .Background)
      let cheekColor = UIColor(priority: priority, headComponent: .Cheek)
      let chinColor = UIColor(priority: priority, headComponent: .Chin)
      GoalieCharacterKit.drawGoalieHead(backgroundColor: bgColor, cheekColor: cheekColor, chinColor: chinColor)
      GoalieCharacterKit.drawAccessoriesForPriority(priority)
   }
}

class BaseCharacterView: UIView
{
   @IBOutlet internal var widthConstraint: NSLayoutConstraint!
   @IBOutlet internal var heightConstraint: NSLayoutConstraint!
   @IBOutlet internal var centerYConstraint: NSLayoutConstraint!
   
   private var _character: GoalieCharacter = .Goalie
   internal var _currentPriority: TaskPriority = .Unknown
   internal var _faceLayer = GoalieFaceLayer()
   
   override func awakeFromNib()
   {
      super.awakeFromNib()
      
      layer.addSublayer(_faceLayer)
      backgroundColor = UIColor.clearColor()
   }
   
   // MARK: - Public
   func updateCharacter(character: GoalieCharacter)
   {
      if _character != character {
         _character = character
         setNeedsDisplay()
      }
   }
   
   func updateWithPriority(priority: TaskPriority)
   {
      _currentPriority = priority
      
      _faceLayer.updateWithPriority(priority)
      setNeedsDisplay()
   }
   
   func animateFace()
   {
      _faceLayer.updateWithPriority(_currentPriority)
   }
   
   func adjustAnchorPoint(point: CGPoint)
   {
      let oldOrigin = frame.origin
      layer.anchorPoint = point
      let newOrigin = frame.origin
      
      let transition = CGPointMake (newOrigin.x - oldOrigin.x, newOrigin.y - oldOrigin.y)
      centerYConstraint.constant -= transition.y
   }
   
   // MARK: - Overridden
   override func drawRect(rect: CGRect)
   {
      _character.drawRect(rect, withPriority: _currentPriority)
   }
}
