package spark.components.supportClasses
{
   import spark.layouts.supportClasses.LayoutBase;
   import mx.core.mx_internal;
   import mx.core.ILayoutElement;
   
   use namespace mx_internal;
   
   public class ButtonBarHorizontalLayout extends LayoutBase
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      private var _gap:int = 0;
      
      public function ButtonBarHorizontalLayout()
      {
         super();
      }
      
      public function get gap() : int
      {
         return this._gap;
      }
      
      public function set gap(param1:int) : void
      {
         if(this._gap == param1)
         {
            return;
         }
         this._gap = param1;
         var _loc2_:GroupBase = target;
         if(_loc2_)
         {
            _loc2_.invalidateSize();
            _loc2_.invalidateDisplayList();
         }
      }
      
      override public function measure() : void
      {
         var _loc8_:ILayoutElement = null;
         super.measure();
         var _loc1_:GroupBase = target;
         if(!_loc1_)
         {
            return;
         }
         var _loc2_:int = 0;
         var _loc3_:Number = this.gap;
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         var _loc6_:int = _loc1_.numElements;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            _loc8_ = _loc1_.getElementAt(_loc7_);
            if(!(!_loc8_ || !_loc8_.includeInLayout))
            {
               _loc4_ = _loc4_ + _loc8_.getPreferredBoundsWidth();
               _loc2_++;
               _loc5_ = Math.max(_loc5_,_loc8_.getPreferredBoundsHeight());
            }
            _loc7_++;
         }
         if(_loc2_ > 1)
         {
            _loc4_ = _loc4_ + _loc3_ * (_loc2_ - 1);
         }
         _loc1_.measuredWidth = _loc4_;
         _loc1_.measuredHeight = _loc5_;
      }
      
      override public function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _loc8_:ILayoutElement = null;
         var _loc12_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc3_:Number = this.gap;
         super.updateDisplayList(param1,param2);
         var _loc4_:GroupBase = target;
         if(!_loc4_)
         {
            return;
         }
         var _loc5_:Number = 0;
         var _loc6_:int = _loc4_.numElements;
         var _loc7_:int = _loc6_;
         var _loc9_:int = 0;
         while(_loc9_ < _loc6_)
         {
            _loc8_ = _loc4_.getElementAt(_loc9_);
            if(!_loc8_ || !_loc8_.includeInLayout)
            {
               _loc7_--;
            }
            else
            {
               _loc5_ = _loc5_ + _loc8_.getPreferredBoundsWidth();
            }
            _loc9_++;
         }
         if(_loc7_ == 0)
         {
            _loc4_.setContentSize(0,0);
            return;
         }
         _loc4_.setContentSize(param1,param2);
         if(param1 == 0)
         {
            _loc3_ = 0;
         }
         var _loc10_:Number = param1 - _loc5_ - _loc3_ * (_loc7_ - 1);
         var _loc11_:Number = param1 - _loc3_ * (_loc7_ - 1);
         var _loc13_:int = _loc7_;
         if(_loc10_ < 0)
         {
            _loc12_ = param1 / _loc7_;
            _loc9_ = 0;
            while(_loc9_ < _loc6_)
            {
               _loc8_ = _loc4_.getElementAt(_loc9_);
               if(!(!_loc8_ || !_loc8_.includeInLayout))
               {
                  _loc18_ = _loc8_.getPreferredBoundsWidth();
                  if(_loc18_ <= _loc12_)
                  {
                     _loc11_ = _loc11_ - _loc18_;
                     _loc13_--;
                  }
               }
               _loc9_++;
            }
            _loc11_ = Math.max(0,_loc11_);
         }
         var _loc14_:Number = 0;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = 0;
         _loc9_ = 0;
         while(_loc9_ < _loc6_)
         {
            _loc8_ = _loc4_.getElementAt(_loc9_);
            if(!(!_loc8_ || !_loc8_.includeInLayout))
            {
               if(_loc10_ > 0)
               {
                  _loc15_ = _loc11_ * _loc8_.getPreferredBoundsWidth() / _loc5_;
               }
               else if(_loc10_ < 0)
               {
                  _loc15_ = _loc12_ < _loc8_.getPreferredBoundsWidth()?Number(_loc11_ / _loc13_):Number(NaN);
               }
               if(!isNaN(_loc15_))
               {
                  _loc16_ = Math.round(_loc15_ + _loc17_);
                  _loc17_ = _loc17_ + (_loc15_ - _loc16_);
               }
               _loc8_.setLayoutBoundsSize(_loc16_,param2);
               _loc8_.setLayoutBoundsPosition(_loc14_,0);
               _loc14_ = _loc14_ + (_loc3_ + _loc8_.getLayoutBoundsWidth());
               _loc16_ = NaN;
            }
            _loc9_++;
         }
      }
   }
}
