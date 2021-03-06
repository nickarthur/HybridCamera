import UIKit
/**
 * Utility
 */
extension RecordButton{
   /**
    * Adds shadow to PARAM view
    */
   public static func addShadowToView(_ view: UIView){
      view.layer.shadowColor = UIColor.black.cgColor
      view.layer.shadowOffset = .zero
      view.layer.shadowRadius = 3
      view.layer.shadowOpacity = 0.25
      view.layer.masksToBounds = false
   }
}
/**
 * Size/Alignment
 */
extension RecordButton{
   open class var size:CGSize { return CGSize.init(width:80,height:80) }
   open class var cornerRadius:CGFloat {return RecordButton.size.width/2}
   /**
    * Positions the RecordButton center bottom of the screen
    */
   @objc open func setPosition(){
      self.frame = RecordButton.rect
   }
   /**
    * The position of the recordButton (Not using AutoLayout)
    */
   open class var rect:CGRect {
      let btnWidth:CGFloat = RecordButton.size.width
      let bottomCenter:CGPoint = {
         let rect = UIScreen.main.bounds
         let bottomMargin:CGFloat = 20
         return CGPoint.init(x: rect.midX-(btnWidth/2), y: rect.height - btnWidth - bottomMargin)
      }()
      let rect = CGRect(x:bottomCenter.x, y:bottomCenter.y, width:btnWidth, height:btnWidth)
      return rect
   }
}
