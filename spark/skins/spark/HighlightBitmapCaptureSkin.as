package spark.skins.spark
{
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import flash.geom.ColorTransform;
   import flash.geom.Rectangle;
   import flash.display.Bitmap;
   import spark.components.supportClasses.SkinnableComponent;
   import mx.events.FlexEvent;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import spark.skins.IHighlightBitmapCaptureClient;
   import flash.display.DisplayObject;
   import flash.display.IBitmapDrawable;
   import flash.events.Event;
   
   use namespace mx_internal;
   
   public class HighlightBitmapCaptureSkin extends UIComponent
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      private static var capturingBitmap:Boolean = false;
      
      private static var colorTransform:ColorTransform = new ColorTransform(1.01,1.01,1.01,2);
      
      private static var rect:Rectangle = new Rectangle();
       
      
      protected var bitmap:Bitmap;
      
      private var _target:SkinnableComponent;
      
      public function HighlightBitmapCaptureSkin()
      {
         super();
      }
      
      public function get target() : SkinnableComponent
      {
         return this._target;
      }
      
      public function set target(param1:SkinnableComponent) : void
      {
         this._target = param1;
         if(this._target.skin)
         {
            this._target.skin.addEventListener(FlexEvent.UPDATE_COMPLETE,this.skin_updateCompleteHandler,false,0,true);
         }
      }
      
      protected function get borderWeight() : Number
      {
         return 1;
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         var bitmapData:BitmapData = null;
         var needUpdate:Boolean = false;
         var fillRect:Rectangle = null;
         var skin:DisplayObject = null;
         var unscaledWidth:Number = param1;
         var unscaledHeight:Number = param2;
         if(!this.target)
         {
            return;
         }
         bitmapData = new BitmapData(this.target.width + this.borderWeight * 2,this.target.height + this.borderWeight * 2,true,0);
         var m:Matrix = new Matrix();
         capturingBitmap = true;
         var transform3D:Matrix3D = null;
         if(this.target.$transform.matrix3D)
         {
            transform3D = this.target.$transform.matrix3D;
            this.target.$transform.matrix3D = null;
         }
         if(this.target.focusObj)
         {
            this.target.focusObj.visible = false;
         }
         var bitmapCaptureClient:IHighlightBitmapCaptureClient = this.target.skin as IHighlightBitmapCaptureClient;
         if(bitmapCaptureClient)
         {
            needUpdate = bitmapCaptureClient.beginHighlightBitmapCapture();
            if(needUpdate)
            {
               bitmapCaptureClient.validateNow();
            }
         }
         m.tx = this.borderWeight;
         m.ty = this.borderWeight;
         try
         {
            bitmapData.draw(this.target as IBitmapDrawable,m);
         }
         catch(e:SecurityError)
         {
            skin = target.skin;
            if(skin)
            {
               fillRect = new Rectangle(skin.x,skin.y,skin.width,skin.height);
            }
            else
            {
               fillRect = new Rectangle(target.x,target.y,target.width,target.height);
            }
            bitmapData.fillRect(fillRect,0);
         }
         if(bitmapCaptureClient)
         {
            needUpdate = bitmapCaptureClient.endHighlightBitmapCapture();
            if(needUpdate)
            {
               bitmapCaptureClient.validateNow();
            }
         }
         if(this.target.focusObj)
         {
            this.target.focusObj.visible = true;
         }
         rect.x = rect.y = this.borderWeight;
         rect.width = this.target.width;
         rect.height = this.target.height;
         bitmapData.colorTransform(rect,colorTransform);
         if(!this.bitmap)
         {
            this.bitmap = new Bitmap();
            addChild(this.bitmap);
         }
         this.bitmap.x = this.bitmap.y = -this.borderWeight;
         this.bitmap.bitmapData = bitmapData;
         this.processBitmap();
         if(transform3D)
         {
            this.target.$transform.matrix3D = transform3D;
         }
         capturingBitmap = false;
      }
      
      protected function processBitmap() : void
      {
      }
      
      private function skin_updateCompleteHandler(param1:Event) : void
      {
         if(!capturingBitmap)
         {
            invalidateDisplayList();
         }
      }
   }
}
