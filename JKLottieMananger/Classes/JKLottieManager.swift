//
//  JKLottieManager.swift
//  JKLottieMananger
//
//  Created by JackLee on 2019/7/4.
//

import Foundation
import Lottie

@objcMembers public class JKLottieManager: NSObject {
   public class func initAnimationView(_ filePath:String,_ frame:CGRect) -> AnimationView{
        let animationView:AnimationView = AnimationView.init(filePath: filePath)
        animationView.frame = frame
        return animationView
    }
    
   public class func animationViewNamed(_ name:String, _ frame:CGRect) -> AnimationView{
        let animationView:AnimationView = AnimationView.init(name: name)
        animationView.frame = frame
        return animationView
    }
    
   public class func configLoopModel(_ loopModel:NSInteger, _ animationView:AnimationView ,_ count:CGFloat) -> Void {
        if loopModel == 0 {
            animationView.loopMode = .playOnce
        }else if loopModel == 1 {
            animationView.loopMode = .loop
        }else if loopModel == 2 {
            animationView.loopMode = .autoReverse
        }else if loopModel == 3 {
            animationView.loopMode = .repeat(Float(count))
        }else if loopModel == 4 {
            animationView.loopMode = .repeatBackwards(Float(count))
        }
        
    }
    
   public class func play(_ animationView:AnimationView,_ complete:((_ finished:Bool)->Void)?)->Void{
        animationView.play { (_ finished:Bool) in
            if let complete = complete{
                complete(finished)
            }
        }
        
    }
    
   public class func play(_ animationView:AnimationView, _ fromProgress:CGFloat, _ toProgress:CGFloat, _ complete:((_ finished:Bool)->Void)?) ->Void{
        animationView.play(fromProgress: fromProgress, toProgress: toProgress, loopMode: animationView.loopMode) { (_ finished:Bool) in
            if let complete = complete{
                complete(finished)
            }
        }
    }
    
   public class func play(_ animationView:AnimationView) ->Void{
        animationView.play()
    }
    
   public class func pause(_ animationView:AnimationView) ->Void{
        animationView.pause()
    }
    
   public class func stop(_ animationView:AnimationView) ->Void{
        animationView.stop()
    }
    
   public class func changeRate(_ animationView:AnimationView, _ rate:CGFloat) ->Void{
        animationView.animationSpeed = rate
    }
}
