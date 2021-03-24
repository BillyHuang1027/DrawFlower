//
//  ViewController.swift
//  DrawFlower
//
//  Created by 黃昌齊 on 2021/3/23.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    
    @IBOutlet weak var animatedButterflyImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //漸層背景
        let grandientLayer = CAGradientLayer()
        grandientLayer.frame = view.bounds
        grandientLayer.colors = [
            CGColor(red: 1, green: 1, blue: 1, alpha: 0.8), CGColor(red: 0, green: 191 / 255, blue: 1, alpha: 0.5)
        ]
        view.layer.insertSublayer(grandientLayer, at: 0)
        
        //畫小花
        drawingFlower()
        
        //Animated Butterfly
        guard let data = NSDataAsset(name: "animated-butterfly-image-42")?.data
        else { return }
        let cfData = data as CFData
        CGAnimateImageDataWithBlock(cfData, nil) { (_, cgImage, _) in
            self.animatedButterflyImageView.image = UIImage(cgImage: cgImage)
        }
            
    }
        
    
    @IBAction func FireFliesButton(_ sender: UIButton) {
        //螢火蟲特效
        let skView = SKView(frame: view.frame)
        view.insertSubview(skView, at: 0)
        let scene = SKScene(size: skView.frame.size)
        scene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        scene.backgroundColor = UIColor.clear
        let emitterNode = SKEmitterNode(fileNamed: "FireFliesParticle")
        scene.addChild(emitterNode!)
        skView.presentScene(scene)
    }
    
    
    //小花
    func drawingFlower() {
        
        //花瓣1
        let petalLayer1Path = UIBezierPath()
        petalLayer1Path.move(to: CGPoint(x: 190, y: 300))
        petalLayer1Path.addLine(to: CGPoint(x: 154, y: 165))
        let aDegree = CGFloat.pi / 180
        petalLayer1Path.addArc(withCenter: CGPoint(x: 190, y: 165), radius: 36, startAngle: aDegree * 180, endAngle: aDegree * 0, clockwise: true)
        petalLayer1Path.close()
        
        let petalLayer1 = CAShapeLayer()
        petalLayer1.path = petalLayer1Path.cgPath
        petalLayer1.fillColor = CGColor(red: 229 / 255, green: 83 / 255, blue: 150 / 255, alpha: 1)
        petalLayer1.strokeColor = UIColor.black.cgColor
        petalLayer1.lineWidth = 5
        
        let animation1 = CABasicAnimation(keyPath: "strokeEnd")
        animation1.fromValue = 0
        animation1.toValue = 1
        animation1.duration = 3
        animation1.repeatCount = .greatestFiniteMagnitude
        petalLayer1.add(animation1, forKey: nil)
        
        
        //花瓣2
        let petalLayer2Path = UIBezierPath()
        petalLayer2Path.move(to: CGPoint(x: 190, y: 300))
        petalLayer2Path.addLine(to: CGPoint(x: 226, y: 165))
        petalLayer2Path.addArc(withCenter: CGPoint(x: 257, y: 182), radius: 36, startAngle: aDegree * 210, endAngle: aDegree * 30, clockwise: true)
        petalLayer2Path.close()
        
        let petalLayer2 = CAShapeLayer()
        petalLayer2.path = petalLayer2Path.cgPath
        petalLayer2.fillColor = CGColor(red: 233 / 255, green: 85 / 255, blue: 51 / 255, alpha: 1)
        petalLayer2.strokeColor = UIColor.black.cgColor
        petalLayer2.lineWidth = 5
        
        let animation2 = CABasicAnimation(keyPath: "strokeEnd")
        animation2.fromValue = 0
        animation2.toValue = 1
        animation2.duration = 3
        animation2.repeatCount = .greatestFiniteMagnitude
        petalLayer2.add(animation2, forKey: nil)
        
        //花瓣3
        let petalLayer3Path = UIBezierPath()
        petalLayer3Path.move(to: CGPoint(x: 190, y: 300))
        petalLayer3Path.addLine(to: CGPoint(x: 287, y: 201))
        petalLayer3Path.addArc(withCenter: CGPoint(x: 306, y: 232), radius: 36, startAngle: aDegree * 240, endAngle: aDegree * 60, clockwise: true)
        petalLayer3Path.close()
        
        let petalLayer3 = CAShapeLayer()
        petalLayer3.path = petalLayer3Path.cgPath
        petalLayer3.fillColor = CGColor(red: 240 / 255, green: 144 / 255, blue: 57 / 255, alpha: 1)
        petalLayer3.strokeColor = UIColor.black.cgColor
        petalLayer3.lineWidth = 5
        
        let animation3 = CABasicAnimation(keyPath: "strokeEnd")
        animation3.fromValue = 0
        animation3.toValue = 1
        animation3.duration = 3
        animation3.repeatCount = .greatestFiniteMagnitude
        petalLayer3.add(animation3, forKey: nil)
        
        //花瓣4
        let petalLayer4Path = UIBezierPath()
        petalLayer4Path.move(to: CGPoint(x: 190, y: 300))
        petalLayer4Path.addLine(to: CGPoint(x: 323, y: 264))
        petalLayer4Path.addArc(withCenter: CGPoint(x: 325, y: 300), radius: 36, startAngle: aDegree * 270, endAngle: aDegree * 90, clockwise: true)
        petalLayer4Path.close()
        
        let petalLayer4 = CAShapeLayer()
        petalLayer4.path = petalLayer4Path.cgPath
        petalLayer4.fillColor = CGColor(red: 249 / 255, green: 197 / 255, blue: 63 / 255, alpha: 1)
        petalLayer4.strokeColor = UIColor.black.cgColor
        petalLayer4.lineWidth = 5
        
        let animation4 = CABasicAnimation(keyPath: "strokeEnd")
        animation4.fromValue = 0
        animation4.toValue = 1
        animation4.duration = 3
        animation4.repeatCount = .greatestFiniteMagnitude
        petalLayer4.add(animation4, forKey: nil)
        
        //花瓣5
        let petalLayer5Path = UIBezierPath()
        petalLayer5Path.move(to: CGPoint(x: 190, y: 300))
        petalLayer5Path.addLine(to: CGPoint(x: 325, y: 336))
        petalLayer5Path.addArc(withCenter: CGPoint(x: 306, y: 368), radius: 36, startAngle: aDegree * 300, endAngle: aDegree * 120, clockwise: true)
        petalLayer5Path.close()
        
        let petalLayer5 = CAShapeLayer()
        petalLayer5.path = petalLayer5Path.cgPath
        petalLayer5.fillColor = CGColor(red: 1, green: 242 / 255, blue: 61 / 255, alpha: 1)
        petalLayer5.strokeColor = UIColor.black.cgColor
        petalLayer5.lineWidth = 5
        
        let animation5 = CABasicAnimation(keyPath: "strokeEnd")
        animation5.fromValue = 0
        animation5.toValue = 1
        animation5.duration = 3
        animation5.repeatCount = .greatestFiniteMagnitude
        petalLayer5.add(animation5, forKey: nil)
        
        //花瓣6
        let petalLayer6Path = UIBezierPath()
        petalLayer6Path.move(to: CGPoint(x: 190, y: 300))
        petalLayer6Path.addLine(to: CGPoint(x: 289, y: 399))
        petalLayer6Path.addArc(withCenter: CGPoint(x: 257, y: 418), radius: 36, startAngle: aDegree * 330, endAngle: aDegree * 150, clockwise: true)
        petalLayer6Path.close()
        
        let petalLayer6 = CAShapeLayer()
        petalLayer6.path = petalLayer6Path.cgPath
        petalLayer6.fillColor = CGColor(red: 170 / 255, green: 206 / 255, blue: 82 / 255, alpha: 1)
        petalLayer6.strokeColor = UIColor.black.cgColor
        petalLayer6.lineWidth = 5
        
        let animation6 = CABasicAnimation(keyPath: "strokeEnd")
        animation6.fromValue = 0
        animation6.toValue = 1
        animation6.duration = 3
        animation6.repeatCount = .greatestFiniteMagnitude
        petalLayer6.add(animation6, forKey: nil)
        
        //花瓣7
        let petalLayer7Path = UIBezierPath()
        petalLayer7Path.move(to: CGPoint(x: 190, y: 300))
        petalLayer7Path.addLine(to: CGPoint(x: 226, y: 435))
        petalLayer7Path.addArc(withCenter: CGPoint(x: 190, y: 435), radius: 36, startAngle: aDegree * 0, endAngle: aDegree * 180, clockwise: true)
        petalLayer7Path.close()
        
        let petalLayer7 = CAShapeLayer()
        petalLayer7.path = petalLayer7Path.cgPath
        petalLayer7.fillColor = CGColor(red: 0, green: 167 / 255, blue: 95 / 255, alpha: 1)
        petalLayer7.strokeColor = UIColor.black.cgColor
        petalLayer7.lineWidth = 5
        
        let animation7 = CABasicAnimation(keyPath: "strokeEnd")
        animation7.fromValue = 0
        animation7.toValue = 1
        animation7.duration = 3
        animation7.repeatCount = .greatestFiniteMagnitude
        petalLayer7.add(animation7, forKey: nil)
        
        //花瓣8
        let petalLayer8Path = UIBezierPath()
        petalLayer8Path.move(to: CGPoint(x: 190, y: 300))
        petalLayer8Path.addLine(to: CGPoint(x: 154, y: 435))
        petalLayer8Path.addArc(withCenter: CGPoint(x: 123, y: 418), radius: 36, startAngle: aDegree * 30, endAngle: aDegree * 210, clockwise: true)
        petalLayer8Path.close()
        
        let petalLayer8 = CAShapeLayer()
        petalLayer8.path = petalLayer8Path.cgPath
        petalLayer8.fillColor = CGColor(red: 0, green: 172 / 255, blue: 168 / 255, alpha: 1)
        petalLayer8.strokeColor = UIColor.black.cgColor
        petalLayer8.lineWidth = 5
        
        let animation8 = CABasicAnimation(keyPath: "strokeEnd")
        animation8.fromValue = 0
        animation8.toValue = 1
        animation8.duration = 3
        animation8.repeatCount = .greatestFiniteMagnitude
        petalLayer8.add(animation8, forKey: nil)
        
        //花瓣9
        let petalLayer9Path = UIBezierPath()
        petalLayer9Path.move(to: CGPoint(x: 190, y: 300))
        petalLayer9Path.addLine(to: CGPoint(x: 93, y: 399))
        petalLayer9Path.addArc(withCenter: CGPoint(x: 74, y: 368), radius: 36, startAngle: aDegree * 60, endAngle: aDegree * 240, clockwise: true)
        petalLayer9Path.close()
        
        let petalLayer9 = CAShapeLayer()
        petalLayer9.path = petalLayer9Path.cgPath
        petalLayer9.fillColor = CGColor(red: 2 / 255, green: 175 / 255, blue: 236 / 255, alpha: 1)
        petalLayer9.strokeColor = UIColor.black.cgColor
        petalLayer9.lineWidth = 5
        
        let animation9 = CABasicAnimation(keyPath: "strokeEnd")
        animation9.fromValue = 0
        animation9.toValue = 1
        animation9.duration = 3
        animation9.repeatCount = .greatestFiniteMagnitude
        petalLayer9.add(animation9, forKey: nil)
        
        //花瓣10
        let petalLayer10Path = UIBezierPath()
        petalLayer10Path.move(to: CGPoint(x: 190, y: 300))
        petalLayer10Path.addLine(to: CGPoint(x: 55, y: 336))
        petalLayer10Path.addArc(withCenter: CGPoint(x: 55, y: 300), radius: 36, startAngle: aDegree * 90, endAngle: aDegree * 270, clockwise: true)
        petalLayer10Path.close()
        
        let petalLayer10 = CAShapeLayer()
        petalLayer10.path = petalLayer10Path.cgPath
        petalLayer10.fillColor = CGColor(red: 24 / 255, green: 127 / 255, blue: 194 / 255, alpha: 1)
        petalLayer10.strokeColor = UIColor.black.cgColor
        petalLayer10.lineWidth = 5
        
        let animation10 = CABasicAnimation(keyPath: "strokeEnd")
        animation10.fromValue = 0
        animation10.toValue = 1
        animation10.duration = 3
        animation10.repeatCount = .greatestFiniteMagnitude
        petalLayer10.add(animation10, forKey: nil)
        
        //花瓣11
        let petalLayer11Path = UIBezierPath()
        petalLayer11Path.move(to: CGPoint(x: 190, y: 300))
        petalLayer11Path.addLine(to: CGPoint(x: 55, y: 264))
        petalLayer11Path.addArc(withCenter: CGPoint(x: 74, y: 232), radius: 36, startAngle: aDegree * 120, endAngle: aDegree * 300, clockwise: true)
        petalLayer11Path.close()
        
        let petalLayer11 = CAShapeLayer()
        petalLayer11.path = petalLayer11Path.cgPath
        petalLayer11.fillColor = CGColor(red: 77 / 255, green: 67 / 255, blue: 152 / 255, alpha: 1)
        petalLayer11.strokeColor = UIColor.black.cgColor
        petalLayer11.lineWidth = 5
        
        let animation11 = CABasicAnimation(keyPath: "strokeEnd")
        animation11.fromValue = 0
        animation11.toValue = 1
        animation11.duration = 3
        animation11.repeatCount = .greatestFiniteMagnitude
        petalLayer11.add(animation11, forKey: nil)
        
        //花瓣12
        let petalLayer12Path = UIBezierPath()
        petalLayer12Path.move(to: CGPoint(x: 190, y: 300))
        petalLayer12Path.addLine(to: CGPoint(x: 92, y: 201))
        petalLayer12Path.addArc(withCenter: CGPoint(x: 123, y: 182), radius: 36, startAngle: aDegree * 150, endAngle: aDegree * 330, clockwise: true)
        petalLayer12Path.close()
        
        let petalLayer12 = CAShapeLayer()
        petalLayer12.path = petalLayer12Path.cgPath
        petalLayer12.fillColor = CGColor(red: 164 / 255, green: 74 / 255, blue: 151 / 255, alpha: 1)
        petalLayer12.strokeColor = UIColor.black.cgColor
        petalLayer12.lineWidth = 5
        
        let animation12 = CABasicAnimation(keyPath: "strokeEnd")
        animation12.fromValue = 0
        animation12.toValue = 1
        animation12.duration = 3
        animation12.repeatCount = .greatestFiniteMagnitude
        petalLayer12.add(animation12, forKey: nil)
        
        //黃色頭
        let headPath = UIBezierPath(arcCenter: CGPoint(x: 190, y: 300), radius: 75, startAngle: aDegree * 0, endAngle: aDegree * 360, clockwise: true)
        
        let yellowHead = CAShapeLayer()
        yellowHead.path = headPath.cgPath
        yellowHead.fillColor = CGColor(red: 1, green: 240 / 255, blue: 0, alpha: 1)
        yellowHead.strokeColor = UIColor.black.cgColor
        yellowHead.lineWidth = 5
        
        let yellowHeadAnimation = CABasicAnimation(keyPath: "strokeEnd")
        yellowHeadAnimation.fromValue = 0
        yellowHeadAnimation.toValue = 1
        yellowHeadAnimation.duration = 3
        yellowHeadAnimation.repeatCount = .greatestFiniteMagnitude
        yellowHead.add(yellowHeadAnimation, forKey: nil)
        
        //紅色嘴巴
        let redMouthPath = UIBezierPath()
        redMouthPath.move(to: CGPoint(x: 240, y: 300))
        redMouthPath.addQuadCurve(to: CGPoint(x: 140, y: 300), controlPoint: CGPoint(x: 190, y: 400))
        redMouthPath.addQuadCurve(to: CGPoint(x: 240, y: 300), controlPoint: CGPoint(x: 190, y: 280))
        redMouthPath.close()
        
        let redMouth = CAShapeLayer()
        redMouth.path = redMouthPath.cgPath
        redMouth.fillColor = CGColor(red: 231 / 255, green: 1 / 255, blue: 19 / 255, alpha: 1)
        redMouth.strokeColor = UIColor.black.cgColor
        redMouth.lineWidth = 5
        
        let redMouthAnimation = CABasicAnimation(keyPath: "strokeEnd")
        redMouthAnimation.fromValue = 0
        redMouthAnimation.toValue = 1
        redMouthAnimation.duration = 3
        redMouthAnimation.repeatCount = .greatestFiniteMagnitude
        redMouth.add(redMouthAnimation, forKey: nil)
        
        //右眼黑
        let rightBlackEyePath = UIBezierPath(ovalIn: CGRect(x: 210, y: 250, width: 16, height: 23))

        let rightBlackEye = CAShapeLayer()
        rightBlackEye.path = rightBlackEyePath.cgPath
        rightBlackEye.fillColor = UIColor.black.cgColor
        rightBlackEye.setAffineTransform(CGAffineTransform(rotationAngle: aDegree * -30).translatedBy(x: -160, y: 75))
        
        //右上眼白
        let rightUpWhiteEyePath = UIBezierPath(ovalIn: CGRect(x: 210, y: 245, width: 6, height: 9))
        
        let rightUpWhiteEye = CAShapeLayer()
        rightUpWhiteEye.path = rightUpWhiteEyePath.cgPath
        rightUpWhiteEye.fillColor = UIColor.white.cgColor
        rightUpWhiteEye.setAffineTransform(CGAffineTransform(rotationAngle: aDegree * -20).translatedBy(x: -99, y: 67))
      
        
        //右下眼白
        let rightDownWhiteEyePath = UIBezierPath(ovalIn: CGRect(x: 210, y: 255, width: 5, height: 7))
        
        let rightDownWhiteEye = CAShapeLayer()
        rightDownWhiteEye.path = rightDownWhiteEyePath.cgPath
        rightDownWhiteEye.fillColor = UIColor.white.cgColor
        rightDownWhiteEye.setAffineTransform(CGAffineTransform(rotationAngle: aDegree * -20).translatedBy(x: -95, y: 69))
 
        
        //左眼黑
        let leftBlackEyePath = UIBezierPath(ovalIn: CGRect(x: 170, y: 250, width: 16, height: 23))
        
        let leftBlackEye = CAShapeLayer()
        leftBlackEye.path = leftBlackEyePath.cgPath
        leftBlackEye.fillColor = UIColor.black.cgColor
        leftBlackEye.setAffineTransform(CGAffineTransform(rotationAngle: aDegree * 30).translatedBy(x: 95, y: -115))
   
        
        //左上眼白
        let leftUpWhiteEyePath = UIBezierPath(ovalIn: CGRect(x: 170, y: 245, width: 6, height: 9))
        
        let leftUpWhiteEye = CAShapeLayer()
        leftUpWhiteEye.path = leftUpWhiteEyePath.cgPath
        leftUpWhiteEye.fillColor = UIColor.white.cgColor
        leftUpWhiteEye.setAffineTransform(CGAffineTransform(rotationAngle: aDegree * 20).translatedBy(x: 68, y: -62))

        
        //左下眼白
        let leftDownWhiteEyePath = UIBezierPath(ovalIn: CGRect(x: 170, y: 255, width: 5, height: 7))
        
        let leftDownWhiteEye = CAShapeLayer()
        leftDownWhiteEye.path = leftDownWhiteEyePath.cgPath
        leftDownWhiteEye.fillColor = UIColor.white.cgColor
        leftDownWhiteEye.setAffineTransform(CGAffineTransform(rotationAngle: aDegree * 20).translatedBy(x: 73, y: -61))
    
        view.layer.addSublayer(petalLayer1)
        view.layer.addSublayer(petalLayer2)
        view.layer.addSublayer(petalLayer3)
        view.layer.addSublayer(petalLayer4)
        view.layer.addSublayer(petalLayer5)
        view.layer.addSublayer(petalLayer6)
        view.layer.addSublayer(petalLayer7)
        view.layer.addSublayer(petalLayer8)
        view.layer.addSublayer(petalLayer9)
        view.layer.addSublayer(petalLayer10)
        view.layer.addSublayer(petalLayer11)
        view.layer.addSublayer(petalLayer12)
        view.layer.addSublayer(yellowHead)
        view.layer.addSublayer(redMouth)
        view.layer.addSublayer(rightBlackEye)
        view.layer.addSublayer(rightUpWhiteEye)
        view.layer.addSublayer(rightDownWhiteEye)
        view.layer.addSublayer(leftBlackEye)
        view.layer.addSublayer(leftUpWhiteEye)
        view.layer.addSublayer(leftDownWhiteEye)
        
    }

}

