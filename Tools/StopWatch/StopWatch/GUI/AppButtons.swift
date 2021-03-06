//
//  AppButtons.swift
//  Stopwatch
//
//  Created by Chris Mendez on 9/27/15.
//  Copyright (c) 2015 Skyground Media. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//



import UIKit

public class AppButtons : NSObject {

    //// Cache

    private struct Cache {
        static let green: UIColor = UIColor(red: 0.259, green: 0.804, blue: 0.000, alpha: 1.000)
        static let blue: UIColor = UIColor(red: 0.337, green: 0.718, blue: 0.945, alpha: 1.000)
        static let red: UIColor = UIColor(red: 1.000, green: 0.000, blue: 0.000, alpha: 1.000)
        static let orange: UIColor = UIColor(red: 1.000, green: 0.631, blue: 0.004, alpha: 1.000)
        static var image: UIImage?

    }

    //// Colors

    public class var green: UIColor { return Cache.green }
    public class var blue: UIColor { return Cache.blue }
    public class var red: UIColor { return Cache.red }
    public class var orange: UIColor { return Cache.orange }

    //// Images

    public class var image: UIImage {
        if Cache.image == nil {
            Cache.image = UIImage(named: "image.png")!
        }
        return Cache.image!
    }

    //// Drawing Methods

    public class func drawStart() {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Symbol Drawing
        let symbolRect = CGRectMake(0, 0, 100, 100)
        CGContextSaveGState(context)
        UIRectClip(symbolRect)
        CGContextTranslateCTM(context, symbolRect.origin.x, symbolRect.origin.y)

        AppButtons.drawGUIButton(fuchsia: AppButtons.green)
        CGContextRestoreGState(context)


        //// Text Drawing
        let textRect = CGRectMake(0, 24, 100, 51)
        let textTextContent = NSString(string: "Start")
        let textStyle = NSParagraphStyle.defaultParagraphStyle().mutableCopy() as! NSMutableParagraphStyle
        textStyle.alignment = .Center

        let textFontAttributes = [NSFontAttributeName: UIFont(name: "HelveticaNeue", size: 32)!, NSForegroundColorAttributeName: UIColor.blackColor(), NSParagraphStyleAttributeName: textStyle]

        let textTextHeight: CGFloat = textTextContent.boundingRectWithSize(CGSizeMake(textRect.width, CGFloat.infinity), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: textFontAttributes, context: nil).size.height
        CGContextSaveGState(context)
        CGContextClipToRect(context, textRect);
        textTextContent.drawInRect(CGRectMake(textRect.minX, textRect.minY + (textRect.height - textTextHeight) / 2, textRect.width, textTextHeight), withAttributes: textFontAttributes)
        CGContextRestoreGState(context)
    }

    public class func drawLap() {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Symbol Drawing
        let symbolRect = CGRectMake(0, 0, 100, 100)
        CGContextSaveGState(context)
        UIRectClip(symbolRect)
        CGContextTranslateCTM(context, symbolRect.origin.x, symbolRect.origin.y)

        AppButtons.drawGUIButton(fuchsia: AppButtons.blue)
        CGContextRestoreGState(context)


        //// Text Drawing
        let textRect = CGRectMake(0, 24, 100, 51)
        let textTextContent = NSString(string: "Lap")
        let textStyle = NSParagraphStyle.defaultParagraphStyle().mutableCopy() as! NSMutableParagraphStyle
        textStyle.alignment = .Center

        let textFontAttributes = [NSFontAttributeName: UIFont(name: "HelveticaNeue", size: 32)!, NSForegroundColorAttributeName: UIColor.blackColor(), NSParagraphStyleAttributeName: textStyle]

        let textTextHeight: CGFloat = textTextContent.boundingRectWithSize(CGSizeMake(textRect.width, CGFloat.infinity), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: textFontAttributes, context: nil).size.height
        CGContextSaveGState(context)
        CGContextClipToRect(context, textRect);
        textTextContent.drawInRect(CGRectMake(textRect.minX, textRect.minY + (textRect.height - textTextHeight) / 2, textRect.width, textTextHeight), withAttributes: textFontAttributes)
        CGContextRestoreGState(context)
    }

    public class func drawGUIButton(fuchsia fuchsia: UIColor = UIColor(red: 1.000, green: 0.000, blue: 0.921, alpha: 1.000)) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalInRect: CGRectMake(2, 2, 96, 96))
        fuchsia.setFill()
        ovalPath.fill()
        UIColor.darkGrayColor().setStroke()
        ovalPath.lineWidth = 1
        CGContextSaveGState(context)
        CGContextSetLineDash(context, 0, [1, 2], 2)
        ovalPath.stroke()
        CGContextRestoreGState(context)
    }

    public class func drawStop() {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Symbol Drawing
        let symbolRect = CGRectMake(0, 0, 100, 100)
        CGContextSaveGState(context)
        UIRectClip(symbolRect)
        CGContextTranslateCTM(context, symbolRect.origin.x, symbolRect.origin.y)

        AppButtons.drawGUIButton(fuchsia: AppButtons.red)
        CGContextRestoreGState(context)


        //// Text Drawing
        let textRect = CGRectMake(0, 24, 100, 51)
        let textTextContent = NSString(string: "Start")
        let textStyle = NSParagraphStyle.defaultParagraphStyle().mutableCopy() as! NSMutableParagraphStyle
        textStyle.alignment = .Center

        let textFontAttributes = [NSFontAttributeName: UIFont(name: "HelveticaNeue", size: 32)!, NSForegroundColorAttributeName: UIColor.blackColor(), NSParagraphStyleAttributeName: textStyle]

        let textTextHeight: CGFloat = textTextContent.boundingRectWithSize(CGSizeMake(textRect.width, CGFloat.infinity), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: textFontAttributes, context: nil).size.height
        CGContextSaveGState(context)
        CGContextClipToRect(context, textRect);
        textTextContent.drawInRect(CGRectMake(textRect.minX, textRect.minY + (textRect.height - textTextHeight) / 2, textRect.width, textTextHeight), withAttributes: textFontAttributes)
        CGContextRestoreGState(context)
    }

    public class func drawReset() {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Symbol Drawing
        let symbolRect = CGRectMake(0, 0, 100, 100)
        CGContextSaveGState(context)
        UIRectClip(symbolRect)
        CGContextTranslateCTM(context, symbolRect.origin.x, symbolRect.origin.y)

        AppButtons.drawGUIButton(fuchsia: AppButtons.orange)
        CGContextRestoreGState(context)


        //// Text Drawing
        let textRect = CGRectMake(0, 24, 100, 51)
        let textTextContent = NSString(string: "Reset")
        let textStyle = NSParagraphStyle.defaultParagraphStyle().mutableCopy() as! NSMutableParagraphStyle
        textStyle.alignment = .Center

        let textFontAttributes = [NSFontAttributeName: UIFont(name: "HelveticaNeue", size: 32)!, NSForegroundColorAttributeName: UIColor.blackColor(), NSParagraphStyleAttributeName: textStyle]

        let textTextHeight: CGFloat = textTextContent.boundingRectWithSize(CGSizeMake(textRect.width, CGFloat.infinity), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: textFontAttributes, context: nil).size.height
        CGContextSaveGState(context)
        CGContextClipToRect(context, textRect);
        textTextContent.drawInRect(CGRectMake(textRect.minX, textRect.minY + (textRect.height - textTextHeight) / 2, textRect.width, textTextHeight), withAttributes: textFontAttributes)
        CGContextRestoreGState(context)
    }

}
