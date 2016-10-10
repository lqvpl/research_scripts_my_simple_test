package spark.effects
{
   import mx.core.mx_internal;
   import mx.effects.IEffectInstance;
   import spark.effects.animation.MotionPath;
   import spark.effects.supportClasses.AnimateTransformInstance;
   
   use namespace mx_internal;
   
   public class Rotate extends AnimateTransform
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      private static var AFFECTED_PROPERTIES:Array = ["rotationZ","postLayoutRotationZ","width","height"];
      
      private static var RELEVANT_STYLES:Array = [];
       
      
      public var angleFrom:Number;
      
      public var angleTo:Number;
      
      public var angleBy:Number;
      
      public function Rotate(param1:Object = null)
      {
         super(param1);
         instanceClass = AnimateTransformInstance;
         transformEffectSubclass = true;
      }
      
      override public function get relevantStyles() : Array
      {
         return RELEVANT_STYLES;
      }
      
      override public function getAffectedProperties() : Array
      {
         return AFFECTED_PROPERTIES;
      }
      
      override public function createInstance(param1:Object = null) : IEffectInstance
      {
         motionPaths = new Vector.<MotionPath>();
         return super.createInstance(param1);
      }
      
      override protected function initInstance(param1:IEffectInstance) : void
      {
         if(!applyChangesPostLayout)
         {
            addMotionPath("rotationZ",this.angleFrom,this.angleTo,this.angleBy);
         }
         else
         {
            addMotionPath("postLayoutRotationZ",this.angleFrom,this.angleTo,this.angleBy);
         }
         super.initInstance(param1);
      }
   }
}
