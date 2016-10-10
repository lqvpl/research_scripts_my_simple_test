package flashx.textLayout.elements
{
   import flash.utils.Dictionary;
   import flashx.textLayout.compose.ParcelList;
   import flash.geom.Rectangle;
   import flashx.textLayout.container.ContainerController;
   import flashx.textLayout.compose.IFlowComposer;
   import flashx.textLayout.compose.Parcel;
   import flash.text.engine.TextBlock;
   import flashx.textLayout.compose.TextFlowLine;
   import flash.text.engine.TextLine;
   import flashx.textLayout.container.TextContainerManager;
   import flashx.textLayout.tlf_internal;
   import flashx.textLayout.compose.StandardFlowComposer;
   import flashx.textLayout.factory.FactoryDisplayComposer;
   import flashx.textLayout.formats.ITextLayoutFormat;
   import flashx.textLayout.formats.BackgroundColor;
   import flashx.textLayout.formats.BorderColor;
   import flash.display.Shape;
   import flash.display.Graphics;
   import flash.display.CapsStyle;
   import flash.display.Sprite;
   
   use namespace tlf_internal;
   
   public class BackgroundManager
   {
      
      public static var BACKGROUND_MANAGER_CACHE:Dictionary = null;
      
      public static var TOP_EXCLUDED:String = "topExcluded";
      
      public static var BOTTOM_EXCLUDED:String = "bottomExcluded";
      
      public static var TOP_AND_BOTTOM_EXCLUDED:String = "topAndBottomExcluded";
       
      
      protected var _lineDict:Dictionary;
      
      protected var _blockElementDict:Dictionary;
      
      protected var _rectArray:Array;
      
      public function BackgroundManager()
      {
         super();
         this._lineDict = new Dictionary(true);
         this._blockElementDict = new Dictionary(true);
         this._rectArray = new Array();
      }
      
      public static function collectBlock(param1:TextFlow, param2:FlowGroupElement, param3:ParcelList = null, param4:Boolean = false, param5:Boolean = false) : void
      {
         var _loc6_:BackgroundManager = null;
         var _loc7_:Rectangle = null;
         var _loc8_:ContainerController = null;
         var _loc9_:IFlowComposer = null;
         var _loc10_:TableRowElement = null;
         var _loc11_:TableDataCellElement = null;
         var _loc12_:Parcel = null;
         var _loc13_:Number = NaN;
         var _loc14_:TableElement = null;
         var _loc15_:Parcel = null;
         var _loc16_:Number = NaN;
         var _loc17_:TextBlock = null;
         var _loc18_:ParagraphElement = null;
         var _loc19_:TextFlowLine = null;
         var _loc20_:TextFlowLine = null;
         var _loc21_:FlowLeafElement = null;
         var _loc22_:int = 0;
         var _loc23_:ContainerController = null;
         var _loc24_:int = 0;
         var _loc25_:ContainerController = null;
         var _loc26_:Boolean = false;
         var _loc27_:Number = NaN;
         var _loc28_:int = 0;
         var _loc29_:ContainerController = null;
         var _loc30_:int = 0;
         var _loc31_:int = 0;
         var _loc32_:TextLine = null;
         var _loc33_:TextLine = null;
         var _loc34_:FlowLeafElement = null;
         var _loc35_:TextContainerManager = null;
         if(param2)
         {
            if(param2 is TableRowElement)
            {
               _loc10_ = param2 as TableRowElement;
               _loc13_ = 0;
               while(_loc13_ < param2.numChildren)
               {
                  _loc11_ = param2.getChildAt(_loc13_) as TableDataCellElement;
                  if(BackgroundManager.hasBorderOrBackground(_loc11_) || BackgroundManager.hasBorderOrBackground(param2))
                  {
                     if(!param1.backgroundManager)
                     {
                        param1.getBackgroundManager();
                     }
                     _loc6_ = param1.backgroundManager;
                     _loc6_.addBlockElement(_loc11_);
                     _loc12_ = param3.getParcelAt(_loc11_.parcelIndex);
                     if(_loc12_)
                     {
                        _loc7_ = new Rectangle(_loc11_.x,_loc11_.y,_loc11_.width,_loc10_.height);
                        _loc6_.addBlockRect(_loc11_,_loc7_,_loc12_.controller);
                     }
                  }
                  _loc13_++;
               }
            }
            else if(BackgroundManager.hasBorderOrBackground(param2))
            {
               if(!param1.backgroundManager)
               {
                  param1.getBackgroundManager();
               }
               _loc6_ = param1.backgroundManager;
               _loc6_.addBlockElement(param2);
               _loc9_ = param1.flowComposer;
               if(_loc9_ && param2.textLength > 1)
               {
                  if(param2 is TableElement)
                  {
                     _loc14_ = param2 as TableElement;
                     if(_loc14_.numAcrossParcels == 0)
                     {
                        _loc7_ = new Rectangle();
                        _loc15_ = param3.getParcelAt(_loc14_.originParcelIndex);
                        if(_loc15_)
                        {
                           if(param4)
                           {
                              _loc7_.x = _loc15_.x;
                              _loc7_.y = _loc15_.y;
                           }
                           else
                           {
                              _loc7_.x = _loc14_.x;
                              _loc7_.y = _loc14_.y;
                           }
                           _loc7_.width = _loc14_.computedWidth;
                           _loc7_.height = _loc14_.height;
                           _loc6_.addBlockRect(param2,_loc7_,_loc15_.controller);
                        }
                     }
                     else
                     {
                        _loc16_ = 0;
                        while(_loc16_ <= _loc14_.numAcrossParcels)
                        {
                           _loc7_ = new Rectangle();
                           _loc15_ = param3.getParcelAt(_loc14_.originParcelIndex + _loc16_);
                           if(_loc15_)
                           {
                              if(_loc16_ == 0 && !param4)
                              {
                                 _loc7_.x = _loc14_.x;
                                 _loc7_.y = _loc14_.y;
                                 _loc7_.width = _loc14_.computedWidth;
                                 _loc7_.height = _loc14_.heightArray[_loc16_];
                                 _loc6_.addBlockRect(param2,_loc7_,_loc15_.controller,BackgroundManager.BOTTOM_EXCLUDED);
                              }
                              else if(_loc16_ == _loc14_.numAcrossParcels && !param5)
                              {
                                 _loc7_.x = _loc15_.x + _loc14_.computedFormat.marginLeft;
                                 _loc7_.y = _loc15_.y;
                                 _loc7_.width = _loc14_.computedWidth;
                                 _loc7_.height = _loc14_.totalRowDepth;
                                 _loc6_.addBlockRect(param2,_loc7_,_loc15_.controller,BackgroundManager.TOP_EXCLUDED);
                              }
                              else
                              {
                                 _loc7_.x = _loc15_.x + _loc14_.computedFormat.marginLeft;
                                 _loc7_.y = _loc15_.y;
                                 _loc7_.width = _loc14_.computedWidth;
                                 _loc7_.height = _loc14_.heightArray[_loc16_];
                                 _loc6_.addBlockRect(param2,_loc7_,_loc15_.controller,BackgroundManager.TOP_AND_BOTTOM_EXCLUDED);
                              }
                           }
                           _loc16_++;
                        }
                     }
                  }
                  else
                  {
                     _loc17_ = null;
                     _loc18_ = param2.getFirstLeaf().getParagraph();
                     if(_loc18_)
                     {
                        _loc17_ = _loc18_.getTextBlock();
                     }
                     while(!_loc17_ && _loc18_)
                     {
                        _loc18_ = _loc18_.getNextParagraph();
                        _loc17_ = _loc18_.getTextBlock();
                     }
                     if(_loc9_ is StandardFlowComposer && _loc9_.numLines > 0)
                     {
                        _loc19_ = null;
                        _loc20_ = null;
                        if(_loc17_ && _loc17_.firstLine)
                        {
                           _loc19_ = _loc17_.firstLine.userData;
                           do
                           {
                              _loc17_ = _loc18_.getTextBlock();
                              if(_loc17_ && _loc17_.lastLine)
                              {
                                 _loc20_ = _loc17_.lastLine.userData;
                              }
                              _loc21_ = _loc18_.getLastLeaf().getNextLeaf(param2);
                              if(_loc21_)
                              {
                                 _loc18_ = _loc21_.getParagraph();
                              }
                              else
                              {
                                 _loc18_ = null;
                              }
                           }
                           while(_loc18_);
                           
                        }
                        if(_loc19_ && _loc20_)
                        {
                           _loc22_ = _loc19_.columnIndex;
                           _loc23_ = _loc19_.controller;
                           _loc24_ = _loc20_.columnIndex;
                           _loc25_ = _loc20_.controller;
                           if(_loc23_ && _loc25_)
                           {
                              if(_loc23_ == _loc25_ && _loc24_ == _loc22_)
                              {
                                 _loc7_ = _loc23_.columnState.getColumnAt(_loc22_);
                                 _loc7_.top = _loc19_.y;
                                 _loc7_.bottom = _loc20_.y + _loc20_.height;
                                 _loc6_.addBlockRect(param2,_loc7_,_loc23_);
                              }
                              else
                              {
                                 if(_loc23_ != _loc25_)
                                 {
                                    _loc28_ = _loc23_.columnCount - 1;
                                    while(_loc28_ > _loc22_)
                                    {
                                       _loc7_ = _loc23_.columnState.getColumnAt(_loc28_);
                                       _loc6_.addBlockRect(param2,_loc7_,_loc23_);
                                       _loc28_--;
                                    }
                                 }
                                 if(_loc24_ != _loc22_)
                                 {
                                    _loc7_ = _loc23_.columnState.getColumnAt(_loc22_);
                                    _loc7_.top = _loc19_.y;
                                    _loc6_.addBlockRect(param2,_loc7_,_loc23_);
                                 }
                                 _loc26_ = false;
                                 _loc27_ = 0;
                                 while(_loc27_ < _loc9_.numControllers)
                                 {
                                    _loc29_ = _loc9_.getControllerAt(_loc27_);
                                    if(_loc26_)
                                    {
                                       _loc30_ = 0;
                                       while(_loc30_ < _loc29_.columnCount)
                                       {
                                          _loc7_ = _loc29_.columnState.getColumnAt(_loc30_);
                                          _loc6_.addBlockRect(param2,_loc7_,_loc29_);
                                          _loc30_++;
                                       }
                                    }
                                    if(_loc29_ == _loc25_)
                                    {
                                       break;
                                    }
                                    if(_loc29_ == _loc23_)
                                    {
                                       _loc26_ = true;
                                    }
                                    _loc27_++;
                                 }
                                 if(_loc23_ != _loc25_)
                                 {
                                    _loc31_ = 0;
                                    while(_loc31_ < _loc24_)
                                    {
                                       _loc7_ = _loc25_.columnState.getColumnAt(_loc31_);
                                       _loc6_.addBlockRect(param2,_loc7_,_loc25_);
                                       _loc31_++;
                                    }
                                 }
                                 _loc7_ = _loc25_.columnState.getColumnAt(_loc24_);
                                 _loc7_.bottom = _loc20_.y + _loc20_.height;
                                 _loc6_.addBlockRect(param2,_loc7_,_loc25_);
                              }
                           }
                        }
                     }
                     else if(_loc9_ is FactoryDisplayComposer)
                     {
                        _loc32_ = null;
                        _loc33_ = null;
                        if(_loc17_ && _loc17_.firstLine)
                        {
                           _loc32_ = _loc17_.firstLine;
                           do
                           {
                              _loc17_ = _loc18_.getTextBlock();
                              if(_loc17_ && _loc17_.lastLine)
                              {
                                 _loc33_ = _loc17_.lastLine;
                              }
                              _loc34_ = _loc18_.getLastLeaf().getNextLeaf(param2);
                              if(_loc34_)
                              {
                                 _loc18_ = _loc34_.getParagraph();
                              }
                              else
                              {
                                 _loc18_ = null;
                              }
                           }
                           while(_loc18_);
                           
                        }
                        if(_loc32_ && _loc33_)
                        {
                           if((_loc9_ as Object).hasOwnProperty("tcm"))
                           {
                              _loc35_ = (_loc9_ as Object).tcm;
                              if(_loc35_)
                              {
                                 _loc7_ = new Rectangle(0,_loc32_.y - _loc32_.height,_loc35_.compositionWidth,_loc33_.y - _loc32_.y + _loc32_.height);
                                 _loc6_.addBlockRect(param2,_loc7_,_loc9_.getControllerAt(0));
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public static function hasBorderOrBackground(param1:FlowElement) : Boolean
      {
         var _loc2_:ITextLayoutFormat = param1.computedFormat;
         if(_loc2_.backgroundColor != BackgroundColor.TRANSPARENT)
         {
            return true;
         }
         if(_loc2_.borderLeftWidth != 0 || _loc2_.borderRightWidth != 0 || _loc2_.borderTopWidth != 0 || _loc2_.borderBottomWidth != 0)
         {
            if(_loc2_.borderLeftColor != BorderColor.TRANSPARENT || _loc2_.borderRightColor != BorderColor.TRANSPARENT || _loc2_.borderTopColor != BorderColor.TRANSPARENT || _loc2_.borderBottomColor != BorderColor.TRANSPARENT)
            {
               return true;
            }
         }
         return false;
      }
      
      public function clearBlockRecord() : void
      {
         this._rectArray.splice(0,this._rectArray.length);
      }
      
      public function addBlockRect(param1:FlowElement, param2:Rectangle, param3:ContainerController = null, param4:String = null) : void
      {
         var _loc5_:Object = new Object();
         _loc5_.r = param2;
         _loc5_.elem = param1;
         _loc5_.cc = param3;
         _loc5_.style = param4;
         this._rectArray.unshift(_loc5_);
      }
      
      public function addBlockElement(param1:FlowElement) : void
      {
         var _loc2_:ITextLayoutFormat = null;
         var _loc3_:Object = null;
         if(!this._blockElementDict.hasOwnProperty(param1))
         {
            _loc2_ = param1.computedFormat;
            _loc3_ = new Object();
            _loc3_.backgroundColor = _loc2_.backgroundColor;
            _loc3_.backgroundAlpha = _loc2_.backgroundAlpha;
            _loc3_.borderLeftWidth = _loc2_.borderLeftWidth;
            _loc3_.borderRightWidth = _loc2_.borderRightWidth;
            _loc3_.borderTopWidth = _loc2_.borderTopWidth;
            _loc3_.borderBottomWidth = _loc2_.borderBottomWidth;
            _loc3_.borderLeftColor = _loc2_.borderLeftColor;
            _loc3_.borderRightColor = _loc2_.borderRightColor;
            _loc3_.borderTopColor = _loc2_.borderTopColor;
            _loc3_.borderBottomColor = _loc2_.borderBottomColor;
            this._blockElementDict[param1] = _loc3_;
         }
      }
      
      public function addRect(param1:TextLine, param2:FlowLeafElement, param3:Rectangle, param4:uint, param5:Number) : void
      {
         var _loc10_:Object = null;
         var _loc6_:Array = this._lineDict[param1];
         if(_loc6_ == null)
         {
            _loc6_ = this._lineDict[param1] = new Array();
         }
         var _loc7_:Object = new Object();
         _loc7_.rect = param3;
         _loc7_.fle = param2;
         _loc7_.color = param4;
         _loc7_.alpha = param5;
         var _loc8_:int = param2.getAbsoluteStart();
         var _loc9_:int = 0;
         while(_loc9_ < _loc6_.length)
         {
            _loc10_ = _loc6_[_loc9_];
            if(_loc10_.hasOwnProperty("fle") && _loc10_.fle.getAbsoluteStart() == _loc8_)
            {
               _loc6_[_loc9_] = _loc7_;
               return;
            }
            _loc9_++;
         }
         _loc6_.push(_loc7_);
      }
      
      public function addNumberLine(param1:TextLine, param2:TextLine) : void
      {
         var _loc3_:Array = this._lineDict[param1];
         if(_loc3_ == null)
         {
            _loc3_ = this._lineDict[param1] = new Array();
         }
         _loc3_.push({"numberLine":param2});
      }
      
      public function finalizeLine(param1:TextFlowLine) : void
      {
      }
      
      tlf_internal function getEntry(param1:TextLine) : *
      {
         return !!this._lineDict?this._lineDict[param1]:undefined;
      }
      
      public function drawAllRects(param1:TextFlow, param2:Shape, param3:Number, param4:Number) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Rectangle = null;
         var _loc7_:Object = null;
         var _loc9_:* = null;
         var _loc10_:Graphics = null;
         var _loc11_:Array = null;
         var _loc12_:Rectangle = null;
         var _loc13_:Rectangle = null;
         var _loc14_:Object = null;
         var _loc15_:int = 0;
         var _loc16_:TextLine = null;
         var _loc17_:BackgroundManager = null;
         var _loc18_:Array = null;
         var _loc19_:int = 0;
         var _loc20_:Object = null;
         var _loc8_:int = 0;
         while(_loc8_ < this._rectArray.length)
         {
            _loc5_ = this._rectArray[_loc8_];
            _loc6_ = _loc5_.r;
            _loc7_ = this._blockElementDict[_loc5_.elem];
            if(_loc6_ && _loc7_)
            {
               _loc10_ = param2.graphics;
               if(_loc7_.backgroundColor != BackgroundColor.TRANSPARENT)
               {
                  _loc10_.lineStyle(0,_loc7_.backgroundColor,_loc7_.backgroundAlpha,true);
                  _loc10_.beginFill(_loc7_.backgroundColor);
                  _loc10_.drawRect(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                  _loc10_.endFill();
               }
               _loc10_.moveTo(_loc6_.x + Math.floor(_loc7_.borderLeftWidth / 2),_loc6_.y + Math.floor(_loc7_.borderTopWidth / 2));
               if(_loc5_.style != BackgroundManager.TOP_EXCLUDED && _loc5_.style != BackgroundManager.TOP_AND_BOTTOM_EXCLUDED && _loc7_.borderTopWidth != 0 && _loc7_.borderTopColor != BorderColor.TRANSPARENT)
               {
                  _loc10_.lineStyle(_loc7_.borderTopWidth,_loc7_.borderTopColor,_loc7_.backgroundAlpha,true,"normal",CapsStyle.SQUARE);
                  _loc10_.lineTo(_loc6_.x + _loc6_.width - Math.floor(_loc7_.borderLeftWidth / 2),_loc6_.y + Math.floor(_loc7_.borderTopWidth / 2));
               }
               _loc10_.moveTo(_loc6_.x + _loc6_.width - Math.floor(_loc7_.borderRightWidth / 2),_loc6_.y + Math.floor(_loc7_.borderTopWidth / 2));
               if(_loc7_.borderRightWidth != 0 && _loc7_.borderRightColor != BorderColor.TRANSPARENT)
               {
                  _loc10_.lineStyle(_loc7_.borderRightWidth,_loc7_.borderRightColor,_loc7_.backgroundAlpha,true,"normal",CapsStyle.SQUARE);
                  _loc10_.lineTo(_loc6_.x + _loc6_.width - Math.floor(_loc7_.borderRightWidth / 2),_loc6_.y + _loc6_.height - Math.floor(_loc7_.borderTopWidth / 2));
               }
               _loc10_.moveTo(_loc6_.x + _loc6_.width - Math.floor(_loc7_.borderLeftWidth / 2),_loc6_.y + _loc6_.height - Math.floor(_loc7_.borderBottomWidth / 2));
               if(_loc5_.style != BackgroundManager.BOTTOM_EXCLUDED && _loc5_.style != BackgroundManager.TOP_AND_BOTTOM_EXCLUDED && _loc7_.borderBottomWidth != 0 && _loc7_.borderBottomColor != BorderColor.TRANSPARENT)
               {
                  _loc10_.lineStyle(_loc7_.borderBottomWidth,_loc7_.borderBottomColor,_loc7_.backgroundAlpha,true,"normal",CapsStyle.SQUARE);
                  _loc10_.lineTo(_loc6_.x + Math.floor(_loc7_.borderLeftWidth / 2),_loc6_.y + _loc6_.height - Math.floor(_loc7_.borderBottomWidth / 2));
               }
               _loc10_.moveTo(_loc6_.x + Math.floor(_loc7_.borderLeftWidth / 2),_loc6_.y + _loc6_.height - Math.floor(_loc7_.borderTopWidth / 2));
               if(_loc7_.borderLeftWidth != 0 && _loc7_.borderLeftColor != BorderColor.TRANSPARENT)
               {
                  _loc10_.lineStyle(_loc7_.borderLeftWidth,_loc7_.borderLeftColor,_loc7_.backgroundAlpha,true,"normal",CapsStyle.SQUARE);
                  _loc10_.lineTo(_loc6_.x + Math.floor(_loc7_.borderLeftWidth / 2),_loc6_.y + Math.floor(_loc7_.borderTopWidth / 2));
               }
            }
            _loc8_++;
         }
         for(_loc9_ in this._lineDict)
         {
            _loc11_ = this._lineDict[_loc9_];
            if(_loc11_.length)
            {
               _loc12_ = _loc11_[0].columnRect;
               _loc15_ = 0;
               while(_loc15_ < _loc11_.length)
               {
                  _loc14_ = _loc11_[_loc15_];
                  if(_loc14_.hasOwnProperty("numberLine"))
                  {
                     _loc16_ = _loc14_.numberLine;
                     _loc17_ = TextFlowLine.getNumberLineBackground(_loc16_);
                     _loc18_ = _loc17_._lineDict[_loc16_];
                     _loc19_ = 0;
                     while(_loc19_ < _loc18_.length)
                     {
                        _loc20_ = _loc18_[_loc19_];
                        _loc13_ = _loc20_.rect;
                        _loc13_.x = _loc13_.x + (_loc9_.x + _loc16_.x);
                        _loc13_.y = _loc13_.y + (_loc9_.y + _loc16_.y);
                        TextFlowLine.constrainRectToColumn(param1,_loc13_,_loc12_,0,0,param3,param4);
                        param2.graphics.beginFill(_loc20_.color,_loc20_.alpha);
                        param2.graphics.drawRect(_loc13_.x,_loc13_.y,_loc13_.width,_loc13_.height);
                        param2.graphics.endFill();
                        _loc19_++;
                     }
                  }
                  else
                  {
                     _loc13_ = _loc14_.rect;
                     _loc13_.x = _loc13_.x + _loc9_.x;
                     _loc13_.y = _loc13_.y + _loc9_.y;
                     TextFlowLine.constrainRectToColumn(param1,_loc13_,_loc12_,0,0,param3,param4);
                     param2.graphics.beginFill(_loc14_.color,_loc14_.alpha);
                     param2.graphics.drawRect(_loc13_.x,_loc13_.y,_loc13_.width,_loc13_.height);
                     param2.graphics.endFill();
                  }
                  _loc15_++;
               }
               continue;
            }
         }
      }
      
      public function removeLineFromCache(param1:TextLine) : void
      {
         delete this._lineDict[param1];
      }
      
      public function onUpdateComplete(param1:ContainerController) : void
      {
         var _loc3_:Shape = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:Graphics = null;
         var _loc10_:TextLine = null;
         var _loc11_:Array = null;
         var _loc12_:Rectangle = null;
         var _loc13_:TextFlowLine = null;
         var _loc14_:int = 0;
         var _loc15_:Object = null;
         var _loc16_:TextLine = null;
         var _loc17_:BackgroundManager = null;
         var _loc18_:Array = null;
         var _loc19_:int = 0;
         var _loc20_:Object = null;
         var _loc2_:Sprite = param1.container;
         if(_loc2_ && _loc2_.numChildren)
         {
            _loc3_ = param1.getBackgroundShape();
            _loc3_.graphics.clear();
            _loc7_ = 0;
            while(_loc7_ < this._rectArray.length)
            {
               _loc6_ = this._rectArray[_loc7_];
               if(_loc6_.cc == param1)
               {
                  _loc5_ = this._blockElementDict[_loc6_.elem];
                  if(_loc5_ != null)
                  {
                     _loc4_ = _loc6_.r;
                     _loc9_ = _loc3_.graphics;
                     if(_loc5_.backgroundColor != BackgroundColor.TRANSPARENT)
                     {
                        _loc9_.lineStyle(0,_loc5_.backgroundColor,_loc5_.backgroundAlpha,true);
                        _loc9_.beginFill(_loc5_.backgroundColor);
                        _loc9_.drawRect(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
                        _loc9_.endFill();
                     }
                     _loc9_.moveTo(_loc4_.x + Math.floor(_loc5_.borderLeftWidth / 2),_loc4_.y + Math.floor(_loc5_.borderTopWidth / 2));
                     if(_loc6_.style != BackgroundManager.TOP_EXCLUDED && _loc6_.style != BackgroundManager.TOP_AND_BOTTOM_EXCLUDED && _loc5_.borderTopWidth != 0 && _loc5_.borderTopColor != BorderColor.TRANSPARENT)
                     {
                        _loc9_.lineStyle(_loc5_.borderTopWidth,_loc5_.borderTopColor,_loc5_.backgroundAlpha,true,"normal",CapsStyle.SQUARE);
                        _loc9_.lineTo(_loc4_.x + _loc4_.width - Math.floor(_loc5_.borderLeftWidth / 2),_loc4_.y + Math.floor(_loc5_.borderTopWidth / 2));
                     }
                     _loc9_.moveTo(_loc4_.x + _loc4_.width - Math.floor(_loc5_.borderRightWidth / 2),_loc4_.y + Math.floor(_loc5_.borderTopWidth / 2));
                     if(_loc5_.borderRightWidth != 0 && _loc5_.borderRightColor != BorderColor.TRANSPARENT)
                     {
                        _loc9_.lineStyle(_loc5_.borderRightWidth,_loc5_.borderRightColor,_loc5_.backgroundAlpha,true,"normal",CapsStyle.SQUARE);
                        _loc9_.lineTo(_loc4_.x + _loc4_.width - Math.floor(_loc5_.borderRightWidth / 2),_loc4_.y + _loc4_.height - Math.floor(_loc5_.borderTopWidth / 2));
                     }
                     _loc9_.moveTo(_loc4_.x + _loc4_.width - Math.floor(_loc5_.borderLeftWidth / 2),_loc4_.y + _loc4_.height - Math.floor(_loc5_.borderBottomWidth / 2));
                     if(_loc6_.style != BackgroundManager.BOTTOM_EXCLUDED && _loc6_.style != BackgroundManager.TOP_AND_BOTTOM_EXCLUDED && _loc5_.borderBottomWidth != 0 && _loc5_.borderBottomColor != BorderColor.TRANSPARENT)
                     {
                        _loc9_.lineStyle(_loc5_.borderBottomWidth,_loc5_.borderBottomColor,_loc5_.backgroundAlpha,true,"normal",CapsStyle.SQUARE);
                        _loc9_.lineTo(_loc4_.x + Math.floor(_loc5_.borderLeftWidth / 2),_loc4_.y + _loc4_.height - Math.floor(_loc5_.borderBottomWidth / 2));
                     }
                     _loc9_.moveTo(_loc4_.x + Math.floor(_loc5_.borderLeftWidth / 2),_loc4_.y + _loc4_.height - Math.floor(_loc5_.borderTopWidth / 2));
                     if(_loc5_.borderLeftWidth != 0 && _loc5_.borderLeftColor != BorderColor.TRANSPARENT)
                     {
                        _loc9_.lineStyle(_loc5_.borderLeftWidth,_loc5_.borderLeftColor,_loc5_.backgroundAlpha,true,"normal",CapsStyle.SQUARE);
                        _loc9_.lineTo(_loc4_.x + Math.floor(_loc5_.borderLeftWidth / 2),_loc4_.y + Math.floor(_loc5_.borderTopWidth / 2));
                     }
                  }
               }
               _loc7_++;
            }
            _loc8_ = 0;
            while(_loc8_ < param1.textLines.length)
            {
               _loc10_ = param1.textLines[_loc8_];
               _loc11_ = this._lineDict[_loc10_];
               if(_loc11_)
               {
                  _loc13_ = _loc10_.userData as TextFlowLine;
                  _loc14_ = 0;
                  while(_loc14_ < _loc11_.length)
                  {
                     _loc15_ = _loc11_[_loc14_];
                     if(_loc15_.hasOwnProperty("numberLine"))
                     {
                        _loc16_ = _loc15_.numberLine;
                        _loc17_ = TextFlowLine.getNumberLineBackground(_loc16_);
                        _loc18_ = _loc17_._lineDict[_loc16_];
                        if(_loc18_)
                        {
                           _loc19_ = 0;
                           while(_loc19_ < _loc18_.length)
                           {
                              _loc20_ = _loc18_[_loc19_];
                              _loc12_ = _loc20_.rect.clone();
                              _loc12_.x = _loc12_.x + _loc16_.x;
                              _loc12_.y = _loc12_.y + _loc16_.y;
                              _loc13_.convertLineRectToContainer(_loc12_,true);
                              _loc3_.graphics.beginFill(_loc20_.color,_loc20_.alpha);
                              _loc3_.graphics.drawRect(_loc12_.x,_loc12_.y,_loc12_.width,_loc12_.height);
                              _loc3_.graphics.endFill();
                              _loc19_++;
                           }
                        }
                     }
                     else
                     {
                        _loc12_ = _loc15_.rect.clone();
                        _loc13_.convertLineRectToContainer(_loc12_,true);
                        _loc3_.graphics.beginFill(_loc15_.color,_loc15_.alpha);
                        _loc3_.graphics.drawRect(_loc12_.x,_loc12_.y,_loc12_.width,_loc12_.height);
                        _loc3_.graphics.endFill();
                     }
                     _loc14_++;
                  }
               }
               _loc8_++;
            }
         }
      }
      
      public function getShapeRectArray() : Array
      {
         return this._rectArray;
      }
   }
}
