//
//  ComputerAccessoryKit.swift
//  Goalie
//
//  Created by Gregory Klein on 3/28/16.
//  Copyright © 2016 Incipia. All rights reserved.
//

import Foundation

class ComputerAccessoryKit: AccessoryItemDrawing
{
   static func drawWithFrame(_ frame: CGRect, priority: TaskPriority)
   {
      //// General Declarations
      let context = UIGraphicsGetCurrentContext()
      
      //// Color Declarations
      let primaryColor = UIColor(priority: priority, headComponent: .background)
      
      
      //// Subframes
      let group: CGRect = CGRect(x: frame.minX, y: frame.minY, width: frame.width, height: frame.height)
      
      
      //// Group
      //// Bezier 2 Drawing
      let bezier2Path = UIBezierPath()
      bezier2Path.move(to: CGPoint(x: group.minX + 0.80714 * group.width, y: group.minY + 0.84615 * group.height))
      bezier2Path.addLine(to: CGPoint(x: group.minX + 0.19286 * group.width, y: group.minY + 0.84615 * group.height))
      bezier2Path.addLine(to: CGPoint(x: group.minX + 0.19240 * group.width, y: group.minY + 0.17513 * group.height))
      bezier2Path.addLine(to: CGPoint(x: group.minX + 0.80760 * group.width, y: group.minY + 0.17513 * group.height))
      bezier2Path.addLine(to: CGPoint(x: group.minX + 0.80714 * group.width, y: group.minY + 0.84615 * group.height))
      bezier2Path.close()
      bezier2Path.move(to: CGPoint(x: group.minX + 0.08571 * group.width, y: group.minY + 0.10257 * group.height))
      bezier2Path.addLine(to: CGPoint(x: group.minX + 0.08571 * group.width, y: group.minY + 0.84621 * group.height))
      bezier2Path.addLine(to: CGPoint(x: group.minX + 0.91429 * group.width, y: group.minY + 0.84621 * group.height))
      bezier2Path.addLine(to: CGPoint(x: group.minX + 0.91429 * group.width, y: group.minY + 0.10257 * group.height))
      bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.85714 * group.width, y: group.minY + 0.00000 * group.height), controlPoint1: CGPoint(x: group.minX + 0.91429 * group.width, y: group.minY + 0.04590 * group.height), controlPoint2: CGPoint(x: group.minX + 0.88870 * group.width, y: group.minY + 0.00000 * group.height))
      bezier2Path.addLine(to: CGPoint(x: group.minX + 0.14286 * group.width, y: group.minY + 0.00000 * group.height))
      bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.08571 * group.width, y: group.minY + 0.10257 * group.height), controlPoint1: CGPoint(x: group.minX + 0.11130 * group.width, y: group.minY + 0.00000 * group.height), controlPoint2: CGPoint(x: group.minX + 0.08571 * group.width, y: group.minY + 0.04590 * group.height))
      bezier2Path.close()
      primaryColor.setFill()
      bezier2Path.fill()
      
      
      //// Rectangle Drawing
      let rectanglePath = UIBezierPath(rect: CGRect(x: group.minX + floor(group.width * 0.31429 + 0.5), y: group.minY + floor(group.height * 0.43595 - 0.5) + 1, width: floor(group.width * 0.68571 + 0.5) - floor(group.width * 0.31429 + 0.5), height: floor(group.height * 0.74365 - 0.5) - floor(group.height * 0.43595 - 0.5)))
      primaryColor.setFill()
      rectanglePath.fill()
      
      
      //// Group 2
      context!.saveGState()
      context!.setAlpha(0.4)
      context!.beginTransparencyLayer(auxiliaryInfo: nil)
      
      
      //// Bezier Drawing
      let bezierPath = UIBezierPath()
      bezierPath.move(to: CGPoint(x: group.minX + 0.91429 * group.width, y: group.minY + 1.00000 * group.height))
      bezierPath.addLine(to: CGPoint(x: group.minX + 0.08571 * group.width, y: group.minY + 1.00000 * group.height))
      bezierPath.addCurve(to: CGPoint(x: group.minX + 0.00000 * group.width, y: group.minY + 0.84615 * group.height), controlPoint1: CGPoint(x: group.minX + 0.03837 * group.width, y: group.minY + 1.00000 * group.height), controlPoint2: CGPoint(x: group.minX + 0.00000 * group.width, y: group.minY + 0.93113 * group.height))
      bezierPath.addLine(to: CGPoint(x: group.minX + 0.00000 * group.width, y: group.minY + 0.84615 * group.height))
      bezierPath.addLine(to: CGPoint(x: group.minX + 1.00000 * group.width, y: group.minY + 0.84615 * group.height))
      bezierPath.addLine(to: CGPoint(x: group.minX + 1.00000 * group.width, y: group.minY + 0.84615 * group.height))
      bezierPath.addCurve(to: CGPoint(x: group.minX + 0.91429 * group.width, y: group.minY + 1.00000 * group.height), controlPoint1: CGPoint(x: group.minX + 1.00000 * group.width, y: group.minY + 0.93113 * group.height), controlPoint2: CGPoint(x: group.minX + 0.96163 * group.width, y: group.minY + 1.00000 * group.height))
      bezierPath.close()
      primaryColor.setFill()
      bezierPath.fill()
      
      
      //// Bezier 3 Drawing
      let bezier3Path = UIBezierPath()
      bezier3Path.move(to: CGPoint(x: group.minX + 0.44286 * group.width, y: group.minY + 0.41029 * group.height))
      bezier3Path.addCurve(to: CGPoint(x: group.minX + 0.42857 * group.width, y: group.minY + 0.38465 * group.height), controlPoint1: CGPoint(x: group.minX + 0.43497 * group.width, y: group.minY + 0.41029 * group.height), controlPoint2: CGPoint(x: group.minX + 0.42857 * group.width, y: group.minY + 0.39880 * group.height))
      bezier3Path.addCurve(to: CGPoint(x: group.minX + 0.44286 * group.width, y: group.minY + 0.35901 * group.height), controlPoint1: CGPoint(x: group.minX + 0.42857 * group.width, y: group.minY + 0.37050 * group.height), controlPoint2: CGPoint(x: group.minX + 0.43497 * group.width, y: group.minY + 0.35901 * group.height))
      bezier3Path.addCurve(to: CGPoint(x: group.minX + 0.45714 * group.width, y: group.minY + 0.38465 * group.height), controlPoint1: CGPoint(x: group.minX + 0.45074 * group.width, y: group.minY + 0.35901 * group.height), controlPoint2: CGPoint(x: group.minX + 0.45714 * group.width, y: group.minY + 0.37050 * group.height))
      bezier3Path.addCurve(to: CGPoint(x: group.minX + 0.44286 * group.width, y: group.minY + 0.41029 * group.height), controlPoint1: CGPoint(x: group.minX + 0.45714 * group.width, y: group.minY + 0.39880 * group.height), controlPoint2: CGPoint(x: group.minX + 0.45074 * group.width, y: group.minY + 0.41029 * group.height))
      bezier3Path.close()
      bezier3Path.move(to: CGPoint(x: group.minX + 0.40000 * group.width, y: group.minY + 0.41029 * group.height))
      bezier3Path.addCurve(to: CGPoint(x: group.minX + 0.38571 * group.width, y: group.minY + 0.38465 * group.height), controlPoint1: CGPoint(x: group.minX + 0.39211 * group.width, y: group.minY + 0.41029 * group.height), controlPoint2: CGPoint(x: group.minX + 0.38571 * group.width, y: group.minY + 0.39880 * group.height))
      bezier3Path.addCurve(to: CGPoint(x: group.minX + 0.40000 * group.width, y: group.minY + 0.35901 * group.height), controlPoint1: CGPoint(x: group.minX + 0.38571 * group.width, y: group.minY + 0.37050 * group.height), controlPoint2: CGPoint(x: group.minX + 0.39211 * group.width, y: group.minY + 0.35901 * group.height))
      bezier3Path.addCurve(to: CGPoint(x: group.minX + 0.41428 * group.width, y: group.minY + 0.38465 * group.height), controlPoint1: CGPoint(x: group.minX + 0.40788 * group.width, y: group.minY + 0.35901 * group.height), controlPoint2: CGPoint(x: group.minX + 0.41428 * group.width, y: group.minY + 0.37050 * group.height))
      bezier3Path.addCurve(to: CGPoint(x: group.minX + 0.40000 * group.width, y: group.minY + 0.41029 * group.height), controlPoint1: CGPoint(x: group.minX + 0.41428 * group.width, y: group.minY + 0.39880 * group.height), controlPoint2: CGPoint(x: group.minX + 0.40788 * group.width, y: group.minY + 0.41029 * group.height))
      bezier3Path.close()
      bezier3Path.move(to: CGPoint(x: group.minX + 0.35714 * group.width, y: group.minY + 0.41029 * group.height))
      bezier3Path.addCurve(to: CGPoint(x: group.minX + 0.34286 * group.width, y: group.minY + 0.38465 * group.height), controlPoint1: CGPoint(x: group.minX + 0.34926 * group.width, y: group.minY + 0.41029 * group.height), controlPoint2: CGPoint(x: group.minX + 0.34286 * group.width, y: group.minY + 0.39880 * group.height))
      bezier3Path.addCurve(to: CGPoint(x: group.minX + 0.35714 * group.width, y: group.minY + 0.35901 * group.height), controlPoint1: CGPoint(x: group.minX + 0.34286 * group.width, y: group.minY + 0.37050 * group.height), controlPoint2: CGPoint(x: group.minX + 0.34926 * group.width, y: group.minY + 0.35901 * group.height))
      bezier3Path.addCurve(to: CGPoint(x: group.minX + 0.37143 * group.width, y: group.minY + 0.38465 * group.height), controlPoint1: CGPoint(x: group.minX + 0.36503 * group.width, y: group.minY + 0.35901 * group.height), controlPoint2: CGPoint(x: group.minX + 0.37143 * group.width, y: group.minY + 0.37050 * group.height))
      bezier3Path.addCurve(to: CGPoint(x: group.minX + 0.35714 * group.width, y: group.minY + 0.41029 * group.height), controlPoint1: CGPoint(x: group.minX + 0.37143 * group.width, y: group.minY + 0.39880 * group.height), controlPoint2: CGPoint(x: group.minX + 0.36503 * group.width, y: group.minY + 0.41029 * group.height))
      bezier3Path.close()
      bezier3Path.move(to: CGPoint(x: group.minX + 0.31428 * group.width, y: group.minY + 0.43593 * group.height))
      bezier3Path.addLine(to: CGPoint(x: group.minX + 0.68571 * group.width, y: group.minY + 0.43593 * group.height))
      bezier3Path.addLine(to: CGPoint(x: group.minX + 0.68571 * group.width, y: group.minY + 0.33337 * group.height))
      bezier3Path.addLine(to: CGPoint(x: group.minX + 0.31428 * group.width, y: group.minY + 0.33337 * group.height))
      bezier3Path.addLine(to: CGPoint(x: group.minX + 0.31428 * group.width, y: group.minY + 0.43593 * group.height))
      bezier3Path.close()
      primaryColor.setFill()
      bezier3Path.fill()
      
      
      context!.endTransparencyLayer()
      context!.restoreGState()
   }
}
