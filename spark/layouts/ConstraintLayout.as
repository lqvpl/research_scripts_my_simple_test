package spark.layouts
{
   import spark.layouts.supportClasses.LayoutBase;
   import flash.utils.Dictionary;
   import mx.containers.utilityClasses.ConstraintColumn;
   import mx.core.mx_internal;
   import mx.containers.utilityClasses.ConstraintRow;
   import spark.layouts.supportClasses.LayoutElementHelper;
   import mx.resources.ResourceManager;
   import spark.components.supportClasses.GroupBase;
   import mx.core.ILayoutElement;
   import mx.containers.utilityClasses.Flex;
   import mx.containers.errors.ConstraintError;
   
   use namespace mx_internal;
   
   public class ConstraintLayout extends LayoutBase
   {
       
      
      private var colSpanElements:Vector.<ElementConstraintInfo> = null;
      
      private var rowSpanElements:Vector.<ElementConstraintInfo> = null;
      
      private var otherElements:Vector.<ElementConstraintInfo> = null;
      
      private var rowBaselines:Vector.<Array> = null;
      
      private var rowMaxAscents:Vector.<Number> = null;
      
      private var constraintCache:Dictionary = null;
      
      private var _constraintColumns:Vector.<ConstraintColumn>;
      
      private var columnsObject:Object;
      
      private var _constraintRows:Vector.<ConstraintRow>;
      
      private var rowsObject:Object;
      
      public function ConstraintLayout()
      {
         this._constraintColumns = new Vector.<ConstraintColumn>(0,true);
         this.columnsObject = {};
         this._constraintRows = new Vector.<ConstraintRow>(0,true);
         this.rowsObject = {};
         super();
      }
      
      private static function constraintsDetermineWidth(param1:ElementConstraintInfo) : Boolean
      {
         return !isNaN(param1.left) && !isNaN(param1.right);
      }
      
      private static function constraintsDetermineHeight(param1:ElementConstraintInfo) : Boolean
      {
         return !isNaN(param1.top) && !isNaN(param1.bottom);
      }
      
      private static function maxSizeToFitIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         if(!isNaN(param2))
         {
            return param1 - param2;
         }
         if(!isNaN(param3))
         {
            return param1 - param3;
         }
         return param1 - param4;
      }
      
      public function get constraintColumns() : Vector.<ConstraintColumn>
      {
         return this._constraintColumns.slice();
      }
      
      public function set constraintColumns(param1:Vector.<ConstraintColumn>) : void
      {
         var _loc3_:ConstraintColumn = null;
         if(param1 == null)
         {
            this._constraintColumns = new Vector.<ConstraintColumn>(0,true);
            this.columnsObject = {};
            return;
         }
         var _loc2_:int = param1.length;
         var _loc4_:Vector.<ConstraintColumn> = param1.slice();
         var _loc5_:Object = {};
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            _loc3_ = _loc4_[_loc6_];
            _loc3_.container = this.target;
            _loc5_[_loc3_.id] = _loc6_;
            _loc6_++;
         }
         this._constraintColumns = _loc4_;
         this.columnsObject = _loc5_;
         if(target)
         {
            target.invalidateSize();
            target.invalidateDisplayList();
         }
      }
      
      public function get constraintRows() : Vector.<ConstraintRow>
      {
         return this._constraintRows.slice();
      }
      
      public function set constraintRows(param1:Vector.<ConstraintRow>) : void
      {
         var _loc3_:ConstraintRow = null;
         var _loc7_:String = null;
         if(param1 == null)
         {
            this._constraintRows = new Vector.<ConstraintRow>(0,true);
            this.rowsObject = {};
            return;
         }
         var _loc2_:int = param1.length;
         var _loc4_:Vector.<ConstraintRow> = param1.slice();
         var _loc5_:Object = {};
         this.rowBaselines = new Vector.<Array>();
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            _loc3_ = _loc4_[_loc6_];
            _loc3_.container = this.target;
            _loc5_[_loc3_.id] = _loc6_;
            this.rowBaselines[_loc6_] = LayoutElementHelper.parseConstraintExp(_loc3_.baseline);
            _loc7_ = this.rowBaselines[_loc6_][1];
            if(_loc7_ && _loc7_ != "maxAscent")
            {
               throw new Error(ResourceManager.getInstance().getString("layout","invalidBaselineOnRow",[_loc3_.id,_loc3_.baseline]));
            }
            _loc6_++;
         }
         this._constraintRows = _loc4_;
         this.rowsObject = _loc5_;
         if(target)
         {
            target.invalidateSize();
            target.invalidateDisplayList();
         }
      }
      
      override public function set target(param1:GroupBase) : void
      {
         var _loc2_:int = 0;
         super.target = param1;
         var _loc3_:int = this._constraintColumns.length;
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this._constraintColumns[_loc2_].container = param1;
            _loc2_++;
         }
         _loc3_ = this._constraintRows.length;
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this._constraintRows[_loc2_].container = param1;
            _loc2_++;
         }
      }
      
      override public function measure() : void
      {
         var _loc1_:GroupBase = null;
         var _loc8_:Number = NaN;
         var _loc9_:Vector.<Number> = null;
         this.checkUseVirtualLayout();
         super.measure();
         _loc1_ = target;
         if(!_loc1_)
         {
            return;
         }
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         this.parseConstraints();
         var _loc6_:Vector.<Number> = this.measureColumns();
         var _loc7_:Vector.<Number> = this.measureRows();
         for each(_loc8_ in _loc6_)
         {
            _loc2_ = _loc2_ + _loc8_;
         }
         for each(_loc8_ in _loc7_)
         {
            _loc3_ = _loc3_ + _loc8_;
         }
         this.constrainPercentRegionSizes(_loc6_,0,true);
         for each(_loc8_ in _loc6_)
         {
            _loc4_ = _loc4_ + _loc8_;
         }
         this.constrainPercentRegionSizes(_loc7_,0,false);
         for each(_loc8_ in _loc7_)
         {
            _loc5_ = _loc5_ + _loc8_;
         }
         if(this.otherElements)
         {
            _loc9_ = this.measureOtherContent();
            _loc2_ = Math.max(_loc2_,_loc9_[0]);
            _loc3_ = Math.max(_loc3_,_loc9_[1]);
            _loc4_ = Math.max(_loc4_,_loc9_[2]);
            _loc5_ = Math.max(_loc5_,_loc9_[3]);
         }
         _loc1_.measuredWidth = Math.ceil(_loc2_);
         _loc1_.measuredHeight = Math.ceil(_loc3_);
         _loc1_.measuredMinWidth = Math.ceil(_loc4_);
         _loc1_.measuredMinHeight = Math.ceil(_loc5_);
         this.clearConstraintCache();
      }
      
      override public function updateDisplayList(param1:Number, param2:Number) : void
      {
         this.checkUseVirtualLayout();
         super.updateDisplayList(param1,param2);
         var _loc3_:GroupBase = target;
         if(!_loc3_)
         {
            return;
         }
         this.measureAndPositionColumnsAndRows(param1,param2);
         this.layoutContent(param1,param2);
      }
      
      protected function layoutContent(param1:Number, param2:Number) : void
      {
         var _loc5_:ILayoutElement = null;
         var _loc3_:GroupBase = target;
         if(!_loc3_)
         {
            return;
         }
         var _loc4_:int = _loc3_.numElements;
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         var _loc8_:int = 0;
         while(_loc8_ < _loc4_)
         {
            _loc5_ = _loc3_.getElementAt(_loc8_);
            if(!(!_loc5_ || !_loc5_.includeInLayout))
            {
               this.applyConstraintsToElement(param1,param2,_loc5_);
               _loc6_ = Math.max(_loc6_,_loc5_.getLayoutBoundsX() + _loc5_.getLayoutBoundsWidth());
               _loc7_ = Math.max(_loc7_,_loc5_.getLayoutBoundsY() + _loc5_.getLayoutBoundsHeight());
            }
            _loc8_++;
         }
         _loc3_.setContentSize(Math.ceil(_loc6_),Math.ceil(_loc7_));
         this.clearConstraintCache();
      }
      
      protected function measureAndPositionColumnsAndRows(param1:Number = NaN, param2:Number = NaN) : void
      {
         this.parseConstraints();
         this.setColumnWidths(this.measureColumns(param1));
         this.setRowHeights(this.measureRows(param2));
      }
      
      mx_internal function checkUseVirtualLayout() : void
      {
         if(useVirtualLayout)
         {
            throw new Error(ResourceManager.getInstance().getString("layout","constraintLayoutNotVirtualized"));
         }
      }
      
      override mx_internal function get virtualLayoutSupported() : Boolean
      {
         return false;
      }
      
      mx_internal function setColumnWidths(param1:Vector.<Number>) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:Vector.<ConstraintColumn> = this._constraintColumns;
         var _loc3_:int = _loc2_.length;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc2_[_loc5_].setActualWidth(param1[_loc5_]);
            _loc2_[_loc5_].x = _loc4_;
            _loc4_ = _loc4_ + param1[_loc5_];
            _loc5_++;
         }
      }
      
      mx_internal function setRowHeights(param1:Vector.<Number>) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:Vector.<ConstraintRow> = this._constraintRows;
         var _loc3_:int = _loc2_.length;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc2_[_loc5_].setActualHeight(param1[_loc5_]);
            _loc2_[_loc5_].y = _loc4_;
            _loc4_ = _loc4_ + param1[_loc5_];
            _loc5_++;
         }
      }
      
      private function applyConstraintsToElement(param1:Number, param2:Number, param3:ILayoutElement) : void
      {
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:ConstraintColumn = null;
         var _loc32_:ConstraintRow = null;
         var _loc33_:Number = NaN;
         var _loc34_:Array = null;
         var _loc4_:ElementConstraintInfo = this.constraintCache[param3];
         var _loc5_:Number = _loc4_.left;
         var _loc6_:Number = _loc4_.right;
         var _loc7_:Number = _loc4_.top;
         var _loc8_:Number = _loc4_.bottom;
         var _loc9_:Number = _loc4_.baseline;
         var _loc10_:String = _loc4_.leftBoundary;
         var _loc11_:String = _loc4_.rightBoundary;
         var _loc12_:String = _loc4_.topBoundary;
         var _loc13_:String = _loc4_.bottomBoundary;
         var _loc14_:String = _loc4_.baselineBoundary;
         var _loc15_:Number = param3.percentWidth;
         var _loc16_:Number = param3.percentHeight;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = 0;
         var _loc24_:Number = 0;
         var _loc25_:Number = 0;
         var _loc26_:Number = param1;
         var _loc27_:Number = 0;
         var _loc28_:Number = param2;
         var _loc29_:Number = 0;
         if(_loc10_)
         {
            _loc31_ = this._constraintColumns[_loc4_.colSpanLeftIndex];
            _loc25_ = _loc31_.x;
         }
         if(_loc11_)
         {
            _loc31_ = this._constraintColumns[_loc4_.colSpanRightIndex];
            _loc26_ = _loc31_.x + _loc31_.width;
         }
         if(_loc12_)
         {
            _loc32_ = this._constraintRows[_loc4_.rowSpanTopIndex];
            _loc27_ = _loc32_.y;
         }
         if(_loc13_)
         {
            _loc32_ = this._constraintRows[_loc4_.rowSpanBottomIndex];
            _loc28_ = _loc32_.y + _loc32_.height;
         }
         if(_loc14_)
         {
            _loc33_ = _loc4_.baselineIndex;
            _loc34_ = this.rowBaselines[_loc33_];
            _loc32_ = this._constraintRows[_loc33_];
            _loc29_ = _loc32_.y + Number(_loc34_[0]);
            if(this.rowMaxAscents)
            {
               _loc29_ = _loc29_ + this.rowMaxAscents[_loc33_];
            }
            if(isNaN(_loc8_))
            {
               _loc28_ = _loc32_.y + _loc32_.height;
            }
         }
         _loc17_ = Math.round(_loc26_ - _loc25_);
         if(!isNaN(_loc9_) && (isNaN(_loc7_) || isNaN(_loc8_)))
         {
            _loc18_ = Math.round(_loc28_ - _loc29_);
         }
         else
         {
            _loc18_ = Math.round(_loc28_ - _loc27_);
         }
         if(!isNaN(_loc15_))
         {
            if(!isNaN(_loc5_))
            {
               _loc17_ = _loc17_ - _loc5_;
            }
            if(!isNaN(_loc6_))
            {
               _loc17_ = _loc17_ - _loc6_;
            }
            _loc19_ = Math.round(_loc17_ * Math.min(_loc15_ * 0.01,1));
            _loc21_ = Math.min(param3.getMaxBoundsWidth(),maxSizeToFitIn(param1,_loc5_,_loc6_,param3.getLayoutBoundsX()));
         }
         else if(!isNaN(_loc5_) && !isNaN(_loc6_))
         {
            _loc19_ = _loc17_ - _loc5_ - _loc6_;
         }
         if(!isNaN(_loc16_))
         {
            if(!isNaN(_loc7_))
            {
               _loc18_ = _loc18_ - _loc7_;
            }
            if(!isNaN(_loc8_))
            {
               _loc18_ = _loc18_ - _loc8_;
            }
            _loc20_ = Math.round(_loc18_ * Math.min(_loc16_ * 0.01,1));
            _loc22_ = Math.min(param3.getMaxBoundsHeight(),maxSizeToFitIn(param2,_loc7_,_loc8_,param3.getLayoutBoundsY()));
         }
         else if(!isNaN(_loc7_) && !isNaN(_loc8_))
         {
            _loc20_ = _loc18_ - _loc7_ - _loc8_;
         }
         if(!isNaN(_loc19_))
         {
            if(isNaN(_loc21_))
            {
               _loc21_ = param3.getMaxBoundsWidth();
            }
            _loc19_ = Math.max(param3.getMinBoundsWidth(),Math.min(_loc21_,_loc19_));
         }
         if(!isNaN(_loc20_))
         {
            if(isNaN(_loc22_))
            {
               _loc22_ = param3.getMaxBoundsHeight();
            }
            _loc20_ = Math.max(param3.getMinBoundsHeight(),Math.min(_loc22_,_loc20_));
         }
         param3.setLayoutBoundsSize(_loc19_,_loc20_);
         _loc19_ = param3.getLayoutBoundsWidth();
         _loc20_ = param3.getLayoutBoundsHeight();
         if(!isNaN(_loc5_))
         {
            _loc23_ = _loc25_ + _loc5_;
         }
         else if(!isNaN(_loc6_))
         {
            _loc23_ = _loc26_ - _loc6_ - _loc19_;
         }
         else
         {
            _loc23_ = param3.getLayoutBoundsX();
         }
         if(!isNaN(_loc9_))
         {
            _loc24_ = _loc29_ + _loc9_ - param3.baselinePosition;
         }
         else if(!isNaN(_loc7_))
         {
            _loc24_ = _loc27_ + _loc7_;
         }
         else if(!isNaN(_loc8_))
         {
            _loc24_ = _loc28_ - _loc8_ - _loc20_;
         }
         else
         {
            _loc24_ = param3.getLayoutBoundsY();
         }
         param3.setLayoutBoundsPosition(_loc23_,_loc24_);
      }
      
      private function updateColumnWidthsForElement(param1:Vector.<Number>, param2:ElementConstraintInfo) : void
      {
         var _loc5_:ConstraintColumn = null;
         var _loc8_:int = 0;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:int = 0;
         var _loc15_:* = false;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:Vector.<ConstraintColumn> = null;
         var _loc20_:Vector.<int> = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc3_:ILayoutElement = param2.layoutElement;
         var _loc4_:int = this._constraintColumns.length;
         var _loc6_:int = -1;
         var _loc7_:int = -1;
         var _loc9_:Number = 0;
         var _loc10_:Number = _loc3_.getPreferredBoundsWidth();
         var _loc14_:Number = 0;
         if(!isNaN(param2.left))
         {
            _loc9_ = _loc9_ + param2.left;
            if(param2.leftBoundary)
            {
               _loc6_ = param2.colSpanLeftIndex;
            }
            else
            {
               _loc6_ = 0;
            }
         }
         if(!isNaN(param2.right))
         {
            _loc9_ = _loc9_ + param2.right;
            if(param2.rightBoundary)
            {
               _loc7_ = param2.colSpanRightIndex;
            }
            else
            {
               _loc7_ = _loc4_ - 1;
            }
         }
         _loc11_ = _loc9_ + _loc10_;
         _loc12_ = _loc11_;
         if(_loc6_ < 0 || _loc7_ < 0)
         {
            _loc15_ = _loc6_ < 0;
            _loc16_ = !!_loc15_?int(_loc7_):int(_loc6_);
            _loc17_ = !!_loc15_?-1:int(_loc4_);
            _loc18_ = !!_loc15_?-1:1;
            if(_loc15_)
            {
               _loc6_ = 0;
            }
            else
            {
               _loc7_ = _loc4_ - 1;
            }
            _loc13_ = _loc16_;
            while(_loc13_ != _loc17_)
            {
               _loc5_ = this._constraintColumns[_loc13_];
               if(!isNaN(_loc5_.explicitWidth))
               {
                  _loc12_ = _loc12_ - _loc5_.explicitWidth;
               }
               if(_loc5_.contentSize || !isNaN(_loc5_.percentWidth) || _loc12_ < 0)
               {
                  if(_loc15_)
                  {
                     _loc6_ = _loc13_;
                  }
                  else
                  {
                     _loc7_ = _loc13_;
                  }
                  break;
               }
               _loc13_ = _loc13_ + _loc18_;
            }
         }
         _loc8_ = _loc7_ - _loc6_ + 1;
         if(_loc8_ == 1)
         {
            _loc5_ = this._constraintColumns[_loc6_];
            if(_loc5_.contentSize || !isNaN(_loc5_.percentWidth))
            {
               _loc14_ = Math.max(param1[_loc6_],_loc9_ + _loc10_);
               if(constraintsDetermineWidth(param2))
               {
                  _loc14_ = Math.max(_loc14_,_loc9_ + _loc3_.getMinBoundsWidth());
               }
               if(!isNaN(_loc5_.maxWidth))
               {
                  _loc14_ = Math.min(_loc14_,_loc5_.maxWidth);
               }
               param1[_loc6_] = Math.ceil(_loc14_);
            }
         }
         else
         {
            _loc19_ = new Vector.<ConstraintColumn>();
            _loc20_ = new Vector.<int>();
            _loc12_ = _loc11_;
            _loc13_ = _loc6_;
            while(_loc13_ <= _loc7_)
            {
               _loc5_ = this._constraintColumns[_loc13_];
               if(!isNaN(_loc5_.explicitWidth))
               {
                  if(_loc12_ < _loc5_.width)
                  {
                     break;
                  }
                  _loc12_ = _loc12_ - _loc5_.width;
               }
               else if(_loc5_.contentSize || !isNaN(_loc5_.percentWidth))
               {
                  _loc19_.push(_loc5_);
                  _loc20_.push(_loc13_);
               }
               _loc13_++;
            }
            _loc21_ = _loc19_.length;
            if(_loc21_ > 0)
            {
               _loc22_ = _loc12_ / _loc21_;
               _loc13_ = 0;
               while(_loc13_ < _loc21_)
               {
                  _loc5_ = _loc19_[_loc13_];
                  _loc14_ = Math.max(param1[_loc20_[_loc13_]],_loc22_);
                  if(!isNaN(_loc5_.maxWidth))
                  {
                     _loc14_ = Math.min(_loc14_,_loc5_.maxWidth);
                  }
                  param1[_loc20_[_loc13_]] = Math.ceil(_loc14_);
                  _loc13_++;
               }
            }
         }
      }
      
      private function constrainPercentRegionSizes(param1:Vector.<Number>, param2:Number, param3:Boolean) : void
      {
         var _loc4_:ConstraintColumn = null;
         var _loc5_:ConstraintRow = null;
         var _loc8_:ConstraintRegionFlexChildInfo = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc6_:int = !!param3?int(this._constraintColumns.length):int(this._constraintRows.length);
         var _loc7_:Array = [];
         var _loc9_:Number = param2;
         var _loc10_:Number = 0;
         var _loc11_:Number = 0;
         var _loc12_:int = 0;
         while(_loc12_ < _loc6_)
         {
            if(param3)
            {
               _loc4_ = this._constraintColumns[_loc12_];
               _loc13_ = _loc4_.percentWidth;
               _loc14_ = _loc4_.minWidth;
               _loc15_ = _loc4_.maxWidth;
            }
            else
            {
               _loc5_ = this._constraintRows[_loc12_];
               _loc13_ = _loc5_.percentHeight;
               _loc14_ = _loc5_.minHeight;
               _loc15_ = _loc5_.maxHeight;
            }
            if(!isNaN(_loc13_))
            {
               param1[_loc12_] = !isNaN(_loc14_)?Number(Math.ceil(Math.max(_loc14_,0))):Number(0);
               _loc10_ = _loc10_ + param1[_loc12_];
               _loc11_ = _loc11_ + _loc13_;
               _loc8_ = new ConstraintRegionFlexChildInfo();
               _loc8_.index = _loc12_;
               _loc8_.percent = _loc13_;
               _loc8_.min = _loc14_;
               _loc8_.max = _loc15_;
               _loc7_.push(_loc8_);
            }
            else
            {
               _loc9_ = _loc9_ - param1[_loc12_];
            }
            _loc12_++;
         }
         if(_loc9_ > _loc10_)
         {
            Flex.flexChildrenProportionally(param2,_loc9_,_loc11_,_loc7_);
            _loc16_ = 0;
            for each(_loc8_ in _loc7_)
            {
               _loc17_ = Math.round(_loc8_.size + _loc16_);
               _loc16_ = _loc16_ + (_loc8_.size - _loc17_);
               param1[_loc8_.index] = _loc17_;
            }
         }
      }
      
      mx_internal function measureColumns(param1:Number = NaN) : Vector.<Number>
      {
         var _loc4_:Number = NaN;
         var _loc6_:ConstraintColumn = null;
         var _loc10_:Number = NaN;
         var _loc11_:ElementConstraintInfo = null;
         var _loc2_:Boolean = false;
         if(!this.constraintCache)
         {
            this.parseConstraints();
            _loc2_ = true;
         }
         if(this._constraintColumns.length <= 0)
         {
            return new Vector.<Number>();
         }
         var _loc3_:Number = 0;
         var _loc5_:Number = this._constraintColumns.length;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Vector.<Number> = new Vector.<Number>(_loc5_);
         _loc4_ = 0;
         while(_loc4_ < _loc5_)
         {
            _loc6_ = this._constraintColumns[_loc4_];
            if(_loc6_.contentSize || !isNaN(_loc6_.percentWidth))
            {
               _loc7_ = _loc7_ || _loc6_.contentSize;
               _loc8_ = _loc8_ || !isNaN(_loc6_.percentWidth);
               if(!isNaN(_loc6_.minWidth))
               {
                  _loc9_[_loc4_] = Math.ceil(Math.max(_loc6_.minWidth,0));
               }
               else
               {
                  _loc9_[_loc4_] = 0;
               }
            }
            else if(!isNaN(_loc6_.explicitWidth))
            {
               _loc10_ = _loc6_.explicitWidth;
               if(!isNaN(_loc6_.minWidth))
               {
                  _loc10_ = Math.max(_loc10_,_loc6_.minWidth);
               }
               if(!isNaN(_loc6_.maxWidth))
               {
                  _loc10_ = Math.min(_loc10_,_loc6_.maxWidth);
               }
               _loc9_[_loc4_] = Math.ceil(_loc10_);
            }
            _loc4_++;
         }
         if(this.colSpanElements && (_loc7_ || _loc8_))
         {
            for each(_loc11_ in this.colSpanElements)
            {
               this.updateColumnWidthsForElement(_loc9_,_loc11_);
            }
         }
         if(!isNaN(param1) && _loc8_)
         {
            this.constrainPercentRegionSizes(_loc9_,param1,true);
         }
         if(_loc2_)
         {
            this.clearConstraintCache();
         }
         return _loc9_;
      }
      
      private function updateRowHeightsForElement(param1:Vector.<Number>, param2:ElementConstraintInfo) : void
      {
         var _loc5_:ConstraintRow = null;
         var _loc8_:int = 0;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:int = 0;
         var _loc15_:* = false;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:Vector.<ConstraintRow> = null;
         var _loc20_:Vector.<int> = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc3_:ILayoutElement = param2.layoutElement;
         var _loc4_:int = this._constraintRows.length;
         var _loc6_:int = -1;
         var _loc7_:int = -1;
         var _loc9_:Number = 0;
         var _loc10_:Number = _loc3_.getPreferredBoundsHeight();
         var _loc14_:Number = 0;
         if(!isNaN(param2.top))
         {
            _loc9_ = _loc9_ + param2.top;
            if(param2.topBoundary)
            {
               _loc6_ = param2.rowSpanTopIndex;
            }
            else
            {
               _loc6_ = 0;
            }
         }
         if(!isNaN(param2.bottom))
         {
            _loc9_ = _loc9_ + param2.bottom;
            if(param2.bottomBoundary)
            {
               _loc7_ = param2.rowSpanBottomIndex;
            }
            else
            {
               _loc7_ = _loc4_ - 1;
            }
         }
         if(!isNaN(param2.baseline) && (_loc6_ < 0 || _loc7_ < 0))
         {
            _loc9_ = _loc9_ + (param2.baseline - _loc3_.baselinePosition);
            if(!isNaN(param2.top))
            {
               _loc9_ = _loc9_ - param2.top;
            }
            if(param2.baselineBoundary)
            {
               _loc6_ = param2.baselineIndex;
               _loc9_ = _loc9_ + Number(this.rowBaselines[_loc6_][0]);
               if(this.rowMaxAscents)
               {
                  _loc9_ = _loc9_ + this.rowMaxAscents[_loc6_];
               }
            }
            else
            {
               _loc6_ = 0;
            }
         }
         _loc11_ = _loc9_ + _loc10_;
         _loc12_ = _loc11_;
         if(_loc6_ < 0 || _loc7_ < 0)
         {
            _loc15_ = _loc6_ < 0;
            _loc16_ = !!_loc15_?int(_loc7_):int(_loc6_);
            _loc17_ = !!_loc15_?-1:int(_loc4_);
            _loc18_ = !!_loc15_?-1:1;
            if(_loc15_)
            {
               _loc6_ = 0;
            }
            else
            {
               _loc7_ = _loc4_ - 1;
            }
            _loc13_ = _loc16_;
            while(_loc13_ != _loc17_)
            {
               _loc5_ = this._constraintRows[_loc13_];
               if(!isNaN(_loc5_.explicitHeight))
               {
                  _loc12_ = _loc12_ - _loc5_.explicitHeight;
               }
               if(_loc5_.contentSize || !isNaN(_loc5_.percentHeight) || _loc12_ < 0)
               {
                  if(_loc15_)
                  {
                     _loc6_ = _loc13_;
                  }
                  else
                  {
                     _loc7_ = _loc13_;
                  }
                  break;
               }
               _loc13_ = _loc13_ + _loc18_;
            }
         }
         _loc8_ = _loc7_ - _loc6_ + 1;
         if(_loc8_ == 1)
         {
            _loc5_ = this._constraintRows[_loc6_];
            if(_loc5_.contentSize || !isNaN(_loc5_.percentHeight))
            {
               _loc14_ = Math.max(param1[_loc6_],_loc9_ + _loc10_);
               if(constraintsDetermineHeight(param2))
               {
                  _loc14_ = Math.max(_loc14_,_loc9_ + _loc3_.getMinBoundsHeight());
               }
               if(!isNaN(_loc5_.maxHeight))
               {
                  _loc14_ = Math.min(_loc14_,_loc5_.maxHeight);
               }
               param1[_loc6_] = Math.ceil(_loc14_);
            }
         }
         else
         {
            _loc19_ = new Vector.<ConstraintRow>();
            _loc20_ = new Vector.<int>();
            _loc12_ = _loc11_;
            _loc13_ = _loc6_;
            while(_loc13_ <= _loc7_)
            {
               _loc5_ = this._constraintRows[_loc13_];
               if(!isNaN(_loc5_.explicitHeight))
               {
                  if(_loc12_ < _loc5_.height)
                  {
                     break;
                  }
                  _loc12_ = _loc12_ - _loc5_.height;
               }
               else if(_loc5_.contentSize || !isNaN(_loc5_.percentHeight))
               {
                  _loc19_.push(_loc5_);
                  _loc20_.push(_loc13_);
               }
               _loc13_++;
            }
            _loc21_ = _loc19_.length;
            if(_loc21_ > 0)
            {
               _loc22_ = _loc12_ / _loc21_;
               _loc13_ = 0;
               while(_loc13_ < _loc21_)
               {
                  _loc5_ = _loc19_[_loc13_];
                  _loc14_ = Math.max(param1[_loc20_[_loc13_]],_loc22_);
                  if(!isNaN(_loc5_.maxHeight))
                  {
                     _loc14_ = Math.min(_loc14_,_loc5_.maxHeight);
                  }
                  param1[_loc20_[_loc13_]] = Math.ceil(_loc14_);
                  _loc13_++;
               }
            }
         }
      }
      
      private function measureRows(param1:Number = NaN) : Vector.<Number>
      {
         var _loc3_:Number = NaN;
         var _loc5_:ConstraintRow = null;
         var _loc9_:Number = NaN;
         var _loc10_:ElementConstraintInfo = null;
         if(this._constraintRows.length <= 0)
         {
            return new Vector.<Number>();
         }
         var _loc2_:Number = 0;
         var _loc4_:Number = this._constraintRows.length;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:Vector.<Number> = new Vector.<Number>(_loc4_);
         _loc3_ = 0;
         while(_loc3_ < _loc4_)
         {
            _loc5_ = this._constraintRows[_loc3_];
            if(_loc5_.contentSize || !isNaN(_loc5_.percentHeight))
            {
               _loc6_ = _loc6_ || _loc5_.contentSize;
               _loc7_ = _loc7_ || !isNaN(_loc5_.percentHeight);
               if(!isNaN(_loc5_.minHeight))
               {
                  _loc8_[_loc3_] = Math.ceil(Math.max(_loc5_.minHeight,0));
               }
               else
               {
                  _loc8_[_loc3_] = 0;
               }
            }
            else if(!isNaN(_loc5_.explicitHeight))
            {
               _loc9_ = _loc5_.explicitHeight;
               if(!isNaN(_loc5_.minHeight))
               {
                  _loc9_ = Math.max(_loc9_,_loc5_.minHeight);
               }
               if(!isNaN(_loc5_.maxHeight))
               {
                  _loc9_ = Math.min(_loc9_,_loc5_.maxHeight);
               }
               _loc8_[_loc3_] = Math.ceil(_loc9_);
            }
            _loc3_++;
         }
         if(this.rowSpanElements && (_loc6_ || _loc7_))
         {
            for each(_loc10_ in this.rowSpanElements)
            {
               this.updateRowHeightsForElement(_loc8_,_loc10_);
            }
         }
         if(!isNaN(param1) && _loc7_)
         {
            this.constrainPercentRegionSizes(_loc8_,param1,false);
         }
         return _loc8_;
      }
      
      private function measureOtherContent() : Vector.<Number>
      {
         var _loc8_:ElementConstraintInfo = null;
         var _loc9_:ILayoutElement = null;
         var _loc10_:Boolean = false;
         var _loc11_:* = false;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:int = this.otherElements.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc8_ = this.otherElements[_loc6_];
            _loc9_ = _loc8_.layoutElement;
            if(!_loc8_.leftBoundary && !_loc8_.rightBoundary)
            {
               _loc12_ = _loc8_.left;
               _loc13_ = _loc8_.right;
               if(!isNaN(_loc12_) && !isNaN(_loc13_))
               {
                  _loc14_ = _loc12_ + _loc13_;
               }
               else if(!isNaN(_loc12_) || !isNaN(_loc13_))
               {
                  _loc14_ = !!isNaN(_loc12_)?Number(0):Number(_loc12_);
                  _loc14_ = _loc14_ + (!!isNaN(_loc13_)?0:_loc13_);
               }
               else
               {
                  _loc14_ = _loc9_.getBoundsXAtSize(NaN,NaN);
               }
               _loc15_ = _loc9_.getPreferredBoundsWidth();
               _loc1_ = Math.max(_loc1_,_loc14_ + _loc15_);
               _loc16_ = !!constraintsDetermineWidth(_loc8_)?Number(_loc9_.getMinBoundsWidth()):Number(_loc15_);
               _loc3_ = Math.max(_loc3_,_loc14_ + _loc16_);
            }
            _loc10_ = !_loc8_.topBoundary && !_loc8_.bottomBoundary;
            _loc11_ = !_loc8_.baselineBoundary;
            if(_loc10_ || _loc11_)
            {
               if(_loc10_)
               {
                  _loc17_ = _loc8_.top;
                  _loc18_ = _loc8_.bottom;
               }
               if(_loc11_)
               {
                  _loc19_ = _loc8_.baseline;
               }
               if(!isNaN(_loc17_) && !isNaN(_loc18_))
               {
                  _loc20_ = _loc17_ + _loc18_;
               }
               else if(!isNaN(_loc19_))
               {
                  _loc20_ = Math.round(_loc19_ - _loc9_.baselinePosition);
               }
               else if(!isNaN(_loc17_) || !isNaN(_loc18_))
               {
                  _loc20_ = !!isNaN(_loc17_)?Number(0):Number(_loc17_);
                  _loc20_ = _loc20_ + (!!isNaN(_loc18_)?0:_loc18_);
               }
               else
               {
                  _loc20_ = _loc9_.getBoundsYAtSize(NaN,NaN);
               }
               _loc21_ = _loc9_.getPreferredBoundsHeight();
               _loc2_ = Math.max(_loc2_,_loc20_ + _loc21_);
               _loc22_ = !!constraintsDetermineHeight(_loc8_)?Number(_loc9_.getMinBoundsHeight()):Number(_loc21_);
               _loc4_ = Math.max(_loc4_,_loc20_ + _loc22_);
            }
            _loc6_++;
         }
         var _loc7_:Vector.<Number> = new Vector.<Number>(4,true);
         _loc7_[0] = Math.max(_loc1_,_loc3_);
         _loc7_[1] = Math.max(_loc2_,_loc4_);
         _loc7_[2] = _loc3_;
         _loc7_[3] = _loc4_;
         return _loc7_;
      }
      
      private function parseConstraints() : void
      {
         var _loc3_:ILayoutElement = null;
         var _loc5_:int = 0;
         var _loc7_:ConstraintRow = null;
         var _loc9_:String = null;
         var _loc1_:GroupBase = target;
         if(!_loc1_)
         {
            return;
         }
         var _loc2_:Number = _loc1_.numElements;
         var _loc4_:Dictionary = new Dictionary(true);
         var _loc6_:int = this._constraintRows.length;
         var _loc8_:Object = {};
         if(this.rowBaselines == null)
         {
            this.rowBaselines = new Vector.<Array>();
         }
         else
         {
            this.rowBaselines.length = 0;
         }
         _loc5_ = 0;
         while(_loc5_ < _loc6_)
         {
            _loc7_ = this._constraintRows[_loc5_];
            this.rowBaselines[_loc5_] = LayoutElementHelper.parseConstraintExp(_loc7_.baseline);
            _loc9_ = this.rowBaselines[_loc5_][1];
            if(_loc9_ && _loc9_ != "maxAscent")
            {
               throw new Error(ResourceManager.getInstance().getString("layout","invalidBaselineOnRow",[_loc7_.id,_loc7_.baseline]));
            }
            _loc5_++;
         }
         _loc5_ = 0;
         while(_loc5_ < _loc2_)
         {
            _loc3_ = _loc1_.getElementAt(_loc5_);
            if(!(!_loc3_ || !_loc3_.includeInLayout))
            {
               this.parseElementConstraints(_loc3_,_loc4_);
            }
            _loc5_++;
         }
         this.constraintCache = _loc4_;
      }
      
      private function parseElementConstraints(param1:ILayoutElement, param2:Dictionary) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc11_:String = null;
         var _loc12_:String = null;
         var _loc13_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Object = null;
         var _loc19_:Object = null;
         var _loc20_:int = 0;
         var _loc21_:Number = NaN;
         var _loc14_:Array = LayoutElementHelper.parseConstraintExp(param1.left);
         _loc3_ = _loc14_[0];
         _loc8_ = _loc14_[1];
         _loc14_ = LayoutElementHelper.parseConstraintExp(param1.right,_loc14_);
         _loc4_ = _loc14_[0];
         _loc9_ = _loc14_[1];
         _loc14_ = LayoutElementHelper.parseConstraintExp(param1.top,_loc14_);
         _loc5_ = _loc14_[0];
         _loc10_ = _loc14_[1];
         _loc14_ = LayoutElementHelper.parseConstraintExp(param1.bottom,_loc14_);
         _loc6_ = _loc14_[0];
         _loc11_ = _loc14_[1];
         _loc14_ = LayoutElementHelper.parseConstraintExp(param1.baseline,_loc14_);
         _loc7_ = _loc14_[0];
         _loc12_ = _loc14_[1];
         var _loc15_:ElementConstraintInfo = new ElementConstraintInfo(param1,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_);
         param2[param1] = _loc15_;
         if(!_loc8_ && !_loc9_ || !_loc10_ && !_loc11_ || !_loc12_)
         {
            if(!this.otherElements)
            {
               this.otherElements = new Vector.<ElementConstraintInfo>();
            }
            this.otherElements.push(_loc15_);
         }
         if(_loc8_ || _loc9_)
         {
            _loc17_ = this._constraintColumns.length;
            if(!this.colSpanElements)
            {
               this.colSpanElements = new Vector.<ElementConstraintInfo>();
            }
            this.colSpanElements.push(_loc15_);
            if(_loc8_)
            {
               _loc18_ = this.columnsObject[_loc8_];
               if(_loc18_ != null)
               {
                  _loc15_.colSpanLeftIndex = int(_loc18_);
               }
               if(_loc15_.colSpanLeftIndex < 0)
               {
                  _loc13_ = ResourceManager.getInstance().getString("layout","columnNotFound",[_loc8_]);
                  throw new ConstraintError(_loc13_);
               }
            }
            if(_loc9_)
            {
               _loc18_ = this.columnsObject[_loc9_];
               if(_loc18_ != null)
               {
                  _loc15_.colSpanRightIndex = int(_loc18_);
               }
               if(_loc15_.colSpanRightIndex < 0)
               {
                  _loc13_ = ResourceManager.getInstance().getString("layout","columnNotFound",[_loc9_]);
                  throw new ConstraintError(_loc13_);
               }
            }
         }
         if(_loc10_ || _loc11_ || _loc12_)
         {
            if(!this.rowSpanElements)
            {
               this.rowSpanElements = new Vector.<ElementConstraintInfo>();
            }
            this.rowSpanElements.push(_loc15_);
            if(_loc10_)
            {
               _loc19_ = this.rowsObject[_loc10_];
               if(_loc19_ != null)
               {
                  _loc15_.rowSpanTopIndex = int(_loc19_);
               }
               if(_loc15_.rowSpanTopIndex < 0)
               {
                  _loc13_ = ResourceManager.getInstance().getString("layout","rowNotFound",[_loc10_]);
                  throw new ConstraintError(_loc13_);
               }
            }
            if(_loc11_)
            {
               _loc19_ = this.rowsObject[_loc11_];
               if(_loc19_ != null)
               {
                  _loc15_.rowSpanBottomIndex = int(_loc19_);
               }
               if(_loc15_.rowSpanBottomIndex < 0)
               {
                  _loc13_ = ResourceManager.getInstance().getString("layout","rowNotFound",[_loc11_]);
                  throw new ConstraintError(_loc13_);
               }
            }
            if(_loc12_)
            {
               _loc19_ = this.rowsObject[_loc12_];
               if(_loc19_ != null)
               {
                  _loc15_.baselineIndex = int(_loc19_);
               }
               if(_loc15_.baselineIndex < 0)
               {
                  _loc13_ = ResourceManager.getInstance().getString("layout","rowNotFound",[_loc12_]);
                  throw new ConstraintError(_loc13_);
               }
               _loc20_ = _loc15_.baselineIndex;
               _loc21_ = this._constraintRows.length;
               if(this.rowBaselines[_loc20_][1])
               {
                  if(!this.rowMaxAscents)
                  {
                     this.rowMaxAscents = new Vector.<Number>(_loc21_,true);
                  }
                  this.rowMaxAscents[_loc20_] = Math.max(this.rowMaxAscents[_loc20_],param1.baselinePosition);
               }
            }
         }
      }
      
      private function clearConstraintCache() : void
      {
         this.colSpanElements = null;
         this.rowSpanElements = null;
         this.otherElements = null;
         this.rowBaselines = null;
         this.rowMaxAscents = null;
         this.constraintCache = null;
      }
   }
}

import mx.core.ILayoutElement;

class ElementConstraintInfo
{
    
   
   public var layoutElement:ILayoutElement;
   
   public var left:Number;
   
   public var right:Number;
   
   public var top:Number;
   
   public var bottom:Number;
   
   public var baseline:Number;
   
   public var leftBoundary:String;
   
   public var rightBoundary:String;
   
   public var topBoundary:String;
   
   public var bottomBoundary:String;
   
   public var baselineBoundary:String;
   
   public var colSpanLeftIndex:int;
   
   public var colSpanRightIndex:int;
   
   public var rowSpanTopIndex:int;
   
   public var rowSpanBottomIndex:int;
   
   public var baselineIndex:int;
   
   function ElementConstraintInfo(param1:ILayoutElement, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String = null, param8:String = null, param9:String = null, param10:String = null, param11:String = null, param12:int = -1, param13:int = -1, param14:int = -1, param15:int = -1, param16:int = -1)
   {
      super();
      this.layoutElement = param1;
      this.left = param2;
      this.right = param3;
      this.top = param4;
      this.bottom = param5;
      this.baseline = param6;
      this.leftBoundary = param7;
      this.rightBoundary = param8;
      this.topBoundary = param9;
      this.bottomBoundary = param10;
      this.baselineBoundary = param11;
      this.colSpanLeftIndex = param12;
      this.colSpanRightIndex = param13;
      this.rowSpanTopIndex = param14;
      this.rowSpanBottomIndex = param15;
      this.baselineIndex = param16;
   }
}

import mx.containers.utilityClasses.FlexChildInfo;

class ConstraintRegionFlexChildInfo extends FlexChildInfo
{
    
   
   public var index:int;
   
   function ConstraintRegionFlexChildInfo()
   {
      super();
   }
}
