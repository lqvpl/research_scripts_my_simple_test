package spark.components
{
   import mx.core.mx_internal;
   import flash.events.Event;
   import mx.core.UIComponent;
   import mx.events.FlexEvent;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   use namespace mx_internal;
   
   public class Form extends SkinnableContainer
   {
       
      
      private var errorStateChanged:Boolean = false;
      
      mx_internal var _invalidElements:Array;
      
      public function Form()
      {
         this._invalidElements = [];
         super();
         addEventListener(FlexEvent.VALID,this.validHandler,true);
         addEventListener(FlexEvent.INVALID,this.invalidHandler,true);
         setStyle("showErrorSkin",false);
         setStyle("showErrorTip",false);
      }
      
      public function get invalidElements() : Array
      {
         return this._invalidElements;
      }
      
      private function errorStringChangedHandler(param1:Event) : void
      {
         var _loc3_:int = 0;
         var _loc2_:UIComponent = param1.target as UIComponent;
         if(_loc2_ && _loc2_.errorString == "")
         {
            _loc3_ = this.findInvalidElementIndex(_loc2_);
            if(_loc3_ != -1)
            {
               this._invalidElements.splice(_loc3_,1);
            }
            _loc2_.removeEventListener("errorStringChanged",this.errorStringChangedHandler);
            this.errorStateChanged = true;
            invalidateSkinState();
         }
      }
      
      private function validHandler(param1:FlexEvent) : void
      {
         var _loc3_:int = 0;
         if(param1.isDefaultPrevented())
         {
            return;
         }
         var _loc2_:UIComponent = param1.target as UIComponent;
         if(_loc2_)
         {
            _loc3_ = this.findInvalidElementIndex(_loc2_);
            if(_loc3_ != -1)
            {
               this._invalidElements.splice(_loc3_,1);
            }
            _loc2_.removeEventListener("errorStringChanged",this.errorStringChangedHandler);
         }
         this.errorStateChanged = true;
         invalidateSkinState();
      }
      
      private function invalidHandler(param1:FlexEvent) : void
      {
         var _loc3_:Vector.<int> = null;
         var _loc4_:Object = null;
         if(param1.isDefaultPrevented())
         {
            return;
         }
         var _loc2_:UIComponent = param1.target as UIComponent;
         if(_loc2_)
         {
            if(this.findInvalidElementIndex(_loc2_) == -1)
            {
               _loc3_ = this.getElementNestedPosition(_loc2_,contentGroup);
               _loc4_ = {
                  "element":_loc2_,
                  "position":_loc3_
               };
               this._invalidElements.push(_loc4_);
               this._invalidElements.sort(this.compareNestedPosition);
               _loc2_.addEventListener("errorStringChanged",this.errorStringChangedHandler);
            }
         }
         this.errorStateChanged = true;
         invalidateSkinState();
      }
      
      override protected function getCurrentSkinState() : String
      {
         var _loc2_:Object = null;
         var _loc3_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc1_:String = super.getCurrentSkinState();
         if(this.errorStateChanged)
         {
            this.errorStateChanged = false;
            _loc3_ = true;
            _loc4_ = "";
            _loc5_ = 0;
            while(_loc5_ < this.invalidElements.length)
            {
               _loc3_ = false;
               if(_loc4_ != "")
               {
                  _loc4_ = _loc4_ + "\n";
               }
               _loc4_ = _loc4_ + UIComponent(this.invalidElements[_loc5_].element).errorString;
               _loc5_++;
            }
            if(!_loc3_ && enabled)
            {
               _loc1_ = "error";
            }
            errorString = _loc4_;
         }
         else if(enabled && this.invalidElements.length > 0)
         {
            _loc1_ = "error";
         }
         return _loc1_;
      }
      
      private function compareNestedPosition(param1:Object, param2:Object) : int
      {
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc3_:Vector.<int> = param1.position;
         var _loc4_:Vector.<int> = param2.position;
         var _loc5_:int = _loc3_.length;
         var _loc6_:int = _loc4_.length;
         var _loc7_:int = Math.min(_loc5_,_loc6_);
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            _loc9_ = _loc3_[_loc8_];
            _loc10_ = _loc4_[_loc8_];
            if(_loc9_ < _loc10_)
            {
               return -1;
            }
            if(_loc9_ > _loc10_)
            {
               return 1;
            }
            _loc8_++;
         }
         if(_loc5_ < _loc6_)
         {
            return -1;
         }
         if(_loc5_ > _loc6_)
         {
            return 1;
         }
         return 0;
      }
      
      private function findInvalidElementIndex(param1:UIComponent) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.invalidElements.length)
         {
            if(param1 == this.invalidElements[_loc2_].element)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      private function getElementNestedPosition(param1:DisplayObject, param2:DisplayObjectContainer = undefined) : Vector.<int>
      {
         var _loc3_:DisplayObjectContainer = param1.parent;
         var _loc4_:DisplayObject = param1;
         var _loc5_:Vector.<int> = new Vector.<int>();
         if(_loc3_ == null || _loc4_ == param2)
         {
            _loc5_.push(0);
         }
         else
         {
            while(_loc3_ != null && _loc4_ != param2)
            {
               _loc5_.splice(0,0,_loc3_.getChildIndex(_loc4_));
               _loc4_ = _loc3_;
               _loc3_ = _loc3_.parent;
            }
         }
         return _loc5_;
      }
   }
}
