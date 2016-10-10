package spark.layouts
{
   import mx.core.mx_internal;
   import spark.layouts.supportClasses.LayoutBase;
   import mx.core.ILayoutElement;
   import spark.components.supportClasses.GroupBase;
   import spark.components.supportClasses.SkinnableComponent;
   import mx.containers.utilityClasses.ConstraintColumn;
   import mx.containers.utilityClasses.Flex;
   
   use namespace mx_internal;
   
   public class FormLayout extends VerticalLayout
   {
       
      
      private var columnWidthsOverride:Vector.<Number>;
      
      public function FormLayout()
      {
         super();
      }
      
      private static function calculateColumnWidthsSum(param1:Vector.<Number>) : Number
      {
         if(param1 == null)
         {
            return 0;
         }
         var _loc2_:Number = 0;
         var _loc3_:int = param1.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = _loc2_ + param1[_loc4_];
            _loc4_++;
         }
         return _loc2_;
      }
      
      private static function getElementLayout(param1:ILayoutElement) : LayoutBase
      {
         var _loc3_:GroupBase = null;
         var _loc2_:LayoutBase = null;
         if(param1 is SkinnableComponent)
         {
            _loc3_ = SkinnableComponent(param1).skin as GroupBase;
            if(_loc3_)
            {
               _loc2_ = _loc3_.layout;
            }
         }
         else if(param1 is GroupBase)
         {
            _loc2_ = GroupBase(param1).layout;
         }
         return _loc2_;
      }
      
      private static function getFormItems(param1:GroupBase) : Vector.<ILayoutElement>
      {
         var _loc3_:ILayoutElement = null;
         if(!param1)
         {
            return new Vector.<ILayoutElement>();
         }
         var _loc2_:int = param1.numElements;
         var _loc4_:Vector.<ILayoutElement> = new Vector.<ILayoutElement>();
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_)
         {
            _loc3_ = param1.getElementAt(_loc5_);
            if(_loc3_.includeInLayout)
            {
               if(getElementLayout(_loc3_) is FormItemLayout)
               {
                  _loc4_.push(_loc3_);
               }
            }
            _loc5_++;
         }
         return _loc4_;
      }
      
      override public function set target(param1:GroupBase) : void
      {
         var _loc2_:LayoutBase = null;
         var _loc3_:int = 0;
         var _loc4_:ILayoutElement = null;
         var _loc5_:int = 0;
         if(target == param1)
         {
            return;
         }
         if(param1 == null)
         {
            _loc3_ = target.numElements;
            _loc5_ = 0;
            while(_loc5_ < _loc3_)
            {
               _loc4_ = target.getElementAt(_loc5_);
               if(_loc4_.includeInLayout)
               {
                  _loc2_ = getElementLayout(_loc4_);
                  if(_loc2_ is FormItemLayout)
                  {
                     (_loc2_ as FormItemLayout).setLayoutColumnWidths(null);
                  }
               }
               _loc5_++;
            }
         }
         super.target = param1;
      }
      
      public function getMeasuredColumnWidths() : Vector.<Number>
      {
         var _loc1_:GroupBase = target;
         if(!_loc1_)
         {
            return null;
         }
         var _loc2_:Vector.<ILayoutElement> = getFormItems(_loc1_);
         return this.calculateColumnMaxWidths(_loc2_);
      }
      
      public function setLayoutColumnWidths(param1:Vector.<Number>) : void
      {
         this.columnWidthsOverride = param1;
      }
      
      override public function measure() : void
      {
         var _loc1_:GroupBase = null;
         super.measure();
         _loc1_ = target;
         if(!_loc1_)
         {
            return;
         }
         var _loc2_:Vector.<ILayoutElement> = getFormItems(_loc1_);
         var _loc3_:Number = paddingLeft + paddingRight;
         var _loc4_:Vector.<Number> = this.columnWidthsOverride == null?this.calculateColumnMaxWidths(_loc2_):this.columnWidthsOverride;
         var _loc5_:Number = calculateColumnWidthsSum(_loc4_) + _loc3_;
         this.constrainPercentColumnWidths(_loc4_,0,_loc2_);
         var _loc6_:Number = calculateColumnWidthsSum(_loc4_) + _loc3_;
         _loc1_.measuredWidth = Math.max(_loc5_,_loc1_.measuredWidth);
         _loc1_.measuredMinWidth = Math.max(_loc6_,_loc1_.measuredMinWidth);
      }
      
      override public function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _loc7_:ILayoutElement = null;
         var _loc8_:Number = NaN;
         var _loc9_:FormItemLayout = null;
         super.updateDisplayList(param1,param2);
         var _loc3_:GroupBase = target;
         if(!_loc3_)
         {
            return;
         }
         var _loc4_:Vector.<ILayoutElement> = getFormItems(_loc3_);
         var _loc5_:Vector.<Number> = this.columnWidthsOverride == null?this.calculateColumnMaxWidths(_loc4_):this.columnWidthsOverride;
         var _loc6_:Number = paddingLeft + paddingRight;
         if(_loc5_.length > 0)
         {
            this.constrainPercentColumnWidths(_loc5_,param1 - _loc6_,_loc4_);
            for each(_loc7_ in _loc4_)
            {
               _loc9_ = getElementLayout(_loc7_) as FormItemLayout;
               _loc9_.setLayoutColumnWidths(_loc5_);
            }
            _loc8_ = calculateColumnWidthsSum(_loc5_);
            _loc3_.setContentSize(_loc8_ + _loc6_,_loc3_.contentHeight);
         }
      }
      
      private function calculateColumnMaxWidths(param1:Vector.<ILayoutElement>) : Vector.<Number>
      {
         var _loc3_:ILayoutElement = null;
         var _loc4_:FormItemLayout = null;
         var _loc6_:Vector.<Number> = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(param1.length == 0)
         {
            return new Vector.<Number>();
         }
         var _loc2_:Vector.<Number> = new Vector.<Number>();
         var _loc5_:Number = NaN;
         for each(_loc3_ in param1)
         {
            _loc4_ = getElementLayout(_loc3_) as FormItemLayout;
            _loc6_ = _loc4_.getMeasuredColumnWidths();
            if(isNaN(_loc5_))
            {
               _loc5_ = _loc6_.length;
            }
            if(_loc2_.length == 0)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_.length)
               {
                  _loc2_[_loc8_] = 0;
                  _loc8_++;
               }
            }
            if(_loc5_ != _loc6_.length)
            {
               throw new Error("The Form must have form items with the same number of constraint columns");
            }
            _loc7_ = 0;
            while(_loc7_ < _loc6_.length)
            {
               _loc2_[_loc7_] = Math.max(_loc2_[_loc7_],_loc6_[_loc7_]);
               _loc7_++;
            }
         }
         return _loc2_;
      }
      
      private function constrainPercentColumnWidths(param1:Vector.<Number>, param2:Number, param3:Vector.<ILayoutElement>) : void
      {
         var _loc4_:FormItemLayout = null;
         var _loc5_:Vector.<ConstraintColumn> = null;
         var _loc7_:ConstraintColumn = null;
         var _loc9_:ColumnFlexChildInfo = null;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         if(param3.length == 0)
         {
            return;
         }
         _loc4_ = getElementLayout(param3[0]) as FormItemLayout;
         _loc5_ = _loc4_.constraintColumns;
         var _loc6_:int = _loc5_.length;
         var _loc8_:Array = [];
         var _loc10_:Number = param2;
         var _loc11_:Number = 0;
         var _loc12_:Number = 0;
         var _loc13_:int = 0;
         while(_loc13_ < _loc6_)
         {
            _loc7_ = _loc5_[_loc13_];
            if(!isNaN(_loc7_.percentWidth))
            {
               param1[_loc13_] = !isNaN(_loc7_.minWidth)?Number(Math.ceil(Math.max(_loc7_.minWidth,0))):Number(0);
               _loc11_ = _loc11_ + param1[_loc13_];
               _loc12_ = _loc12_ + _loc7_.percentWidth;
               _loc9_ = new ColumnFlexChildInfo();
               _loc9_.index = _loc13_;
               _loc9_.percent = _loc7_.percentWidth;
               _loc9_.min = _loc7_.minWidth;
               _loc9_.max = _loc7_.maxWidth;
               _loc8_.push(_loc9_);
            }
            else
            {
               _loc10_ = _loc10_ - param1[_loc13_];
            }
            _loc13_++;
         }
         if(_loc10_ > _loc11_)
         {
            Flex.flexChildrenProportionally(param2,_loc10_,_loc12_,_loc8_);
            _loc14_ = 0;
            for each(_loc9_ in _loc8_)
            {
               _loc15_ = Math.round(_loc9_.size + _loc14_);
               _loc14_ = _loc14_ + (_loc9_.size - _loc15_);
               param1[_loc9_.index] = _loc15_;
               _loc10_ = _loc10_ - _loc15_;
            }
         }
      }
   }
}

import mx.containers.utilityClasses.FlexChildInfo;

class ColumnFlexChildInfo extends FlexChildInfo
{
    
   
   public var index:int;
   
   function ColumnFlexChildInfo()
   {
      super();
   }
}
