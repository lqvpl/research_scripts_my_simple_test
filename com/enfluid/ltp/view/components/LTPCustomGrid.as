package com.enfluid.ltp.view.components
{
   import spark.components.DataGrid;
   import spark.components.gridClasses.GridColumn;
   import spark.events.GridEvent;
   import mx.rpc.http.HTTPService;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import flash.events.MouseEvent;
   import mx.collections.IList;
   import mx.controls.Spacer;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import spark.components.Grid;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.headers.CompetitorAnalysisHeaderRendererInnerClass0;
   import mx.binding.BindingManager;
   
   public class LTPCustomGrid extends DataGrid
   {
       
      
      private var resizeColumn:GridColumn;
      
      private var resizeAnchorX:Number;
      
      private var resizeColumnWidth:Number;
      
      private var nextColumnWidth:Number;
      
      private var nextColumn:GridColumn;
      
      private var resizeFlag:Boolean;
      
      private var prevCol:GridColumn;
      
      private var prevColumnWidth:Number;
      
      public function LTPCustomGrid()
      {
         super();
      }
      
      override protected function separator_mouseDownHandler(param1:GridEvent) : void
      {
         §§push(0);
         if(_loc8_)
         {
            §§push(-(-(§§pop() - 97) * 57) + 13 - 47 - 1);
         }
         var _loc5_:* = §§pop();
         var _loc6_:GridColumn = null;
         var _loc2_:GridColumn = param1.column;
         if(!enabled || !grid.resizableColumns || !_loc2_ || !_loc2_.resizable)
         {
            return;
         }
         this.resizeColumn = param1.column;
         this.resizeAnchorX = param1.localX;
         this.resizeColumnWidth = grid.getColumnWidth(this.resizeColumn.columnIndex);
         if(isNaN(explicitWidth))
         {
            _loc5_ = int(this.getNextAvailableVisibleColumnIndex(this.resizeColumn.columnIndex));
            this.nextColumn = this.getColumnAt(_loc5_);
            this.nextColumnWidth = Math.ceil(grid.getColumnWidth(_loc5_));
         }
         else
         {
            this.nextColumn = null;
            this.nextColumnWidth = NaN;
         }
         var _loc3_:int = this.resizeColumn.columnIndex;
         §§push(0);
         if(_loc8_)
         {
            §§push((§§pop() + 1 + 1) * 99 * 98);
         }
         var _loc4_:* = §§pop();
         while(_loc4_ < _loc3_)
         {
            _loc6_ = this.getColumnAt(_loc4_);
            if(_loc6_.visible && isNaN(_loc6_.width))
            {
               _loc6_.width = grid.getColumnWidth(_loc4_);
            }
            _loc4_++;
         }
      }
      
      override protected function separator_mouseDragHandler(param1:GridEvent) : void
      {
         var _loc6_:Number = NaN;
         if(!this.resizeColumn)
         {
            return;
         }
         var _loc2_:Number = param1.localX - this.resizeAnchorX;
         if(isNaN(this.resizeColumn.minWidth))
         {
            §§push(0);
            if(_loc7_)
            {
               §§push(§§pop() + 49 - 11 - 29 - 1);
            }
            §§push(Number(§§pop()));
         }
         else
         {
            §§push(Number(this.resizeColumn.minWidth));
         }
         var _loc3_:Number = §§pop();
         var _loc4_:Number = this.resizeColumn.maxWidth;
         var _loc5_:Number = Math.ceil(this.resizeColumnWidth + _loc2_);
         if(this.nextColumn)
         {
            if(isNaN(this.nextColumn.minWidth))
            {
               §§push(0);
               if(_loc8_)
               {
                  §§push(-(§§pop() * 1 * 16 - 5) + 1);
               }
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(this.nextColumn.minWidth));
            }
            _loc6_ = §§pop();
            if(Math.ceil(this.nextColumnWidth - _loc2_) <= _loc6_)
            {
               return;
            }
            if(Math.ceil(this.resizeColumnWidth + _loc2_) <= _loc3_)
            {
               return;
            }
            this.nextColumn.width = this.nextColumnWidth - _loc2_;
         }
         _loc5_ = Math.max(_loc5_,_loc3_);
         if(!isNaN(_loc4_))
         {
            _loc5_ = Math.min(_loc5_,_loc4_);
         }
         this.resizeColumn.width = _loc5_;
         validateNow();
         param1.updateAfterEvent();
      }
      
      override protected function separator_mouseUpHandler(param1:GridEvent) : void
      {
         super.separator_mouseUpHandler(param1);
      }
      
      private final function getPrevAvailableVisibleColumnIndex(param1:int) : int
      {
         var _loc2_:IList = null;
         var _loc5_:GridColumn = null;
         §§push(param1);
         §§push(-1);
         if(_loc7_)
         {
            §§push(--(§§pop() + 21) - 85);
         }
         if(§§pop() < §§pop() || §§pop() == §§pop())
         {
            §§push(-1);
            if(_loc7_)
            {
               return §§pop() - 1 - 87 - 51 - 8;
            }
         }
         _loc2_ = this.columns;
         if(_loc2_)
         {
            §§push(int(_loc2_.length));
         }
         else
         {
            §§push(0);
            if(_loc6_)
            {
               §§push(-§§pop() + 16 - 1 - 76 + 1);
            }
         }
         var _loc3_:int = §§pop();
         var _loc4_:int = param1 - 1;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = _loc2_.getItemAt(_loc4_) as GridColumn;
            if(_loc5_ && _loc5_.visible)
            {
               return _loc4_;
            }
            _loc4_--;
         }
         §§push(-1);
         if(_loc7_)
         {
            §§push(-§§pop() * 8 - 96 - 1);
         }
         return §§pop();
      }
      
      private final function getNextAvailableVisibleColumnIndex(param1:int = -1) : int
      {
         var _loc2_:IList = null;
         var _loc5_:GridColumn = null;
         §§push(param1);
         §§push(-1);
         if(_loc6_)
         {
            §§push((§§pop() + 28 + 58 - 1) * 63);
         }
         if(§§pop() < §§pop())
         {
            §§push(-1);
            if(_loc6_)
            {
               return -(§§pop() - 1 + 1) + 1 - 93 - 1 - 55;
            }
         }
         _loc2_ = this.columns;
         if(_loc2_)
         {
            §§push(int(_loc2_.length));
         }
         else
         {
            §§push(0);
            if(_loc7_)
            {
               §§push(-((§§pop() - 1) * 37 + 46) - 1 + 1);
            }
         }
         var _loc3_:int = §§pop();
         §§push(param1);
         §§push(1);
         if(_loc6_)
         {
            §§push(§§pop() + 72 + 2 + 1 + 1);
         }
         var _loc4_:int = §§pop() + §§pop();
         while(_loc4_ < _loc3_)
         {
            _loc5_ = _loc2_.getItemAt(_loc4_) as GridColumn;
            if(_loc5_ && _loc5_.visible)
            {
               return _loc4_;
            }
            _loc4_++;
         }
         §§push(-1);
         if(_loc6_)
         {
            §§push((§§pop() - 32 + 1 + 1 - 100) * 1);
         }
         return §§pop();
      }
      
      private final function getColumnAt(param1:int) : GridColumn
      {
         var _loc2_:Grid = grid;
         if(!_loc2_ || !_loc2_.columns)
         {
            return null;
         }
         var _loc3_:IList = _loc2_.columns;
         §§push(param1);
         §§push(0);
         if(_loc5_)
         {
            §§push(-(§§pop() + 1 + 1) * 95);
         }
         return §§pop() >= §§pop() && param1 < _loc3_.length?_loc3_.getItemAt(param1) as GridColumn:null;
      }
   }
}
