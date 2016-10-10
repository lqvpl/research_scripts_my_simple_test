package com.enfluid.ltp.view.skins.FlatUIComponents.Callout
{
   import spark.skins.spark.supportClasses.CalloutArrow;
   import flash.display.Sprite;
   import flash.display.BlendMode;
   import spark.components.Callout;
   import spark.components.ArrowDirection;
   import flash.display.Graphics;
   import flash.display.GraphicsPathCommand;
   import mx.core.IVisualElement;
   import mx.effects.Parallel;
   import mx.binding.BindingManager;
   import spark.components.Application;
   import mx.core.FlexGlobals;
   import mx.core.DPIClassification;
   
   public final class GeneralCalloutArrowSkin extends CalloutArrow
   {
       
      
      private var highlightWeight:Number;
      
      private var eraseFill:Sprite;
      
      public function GeneralCalloutArrowSkin()
      {
         super();
         useBackgroundGradient = false;
         var _loc1_:Number = Application(FlexGlobals.topLevelApplication).applicationDPI;
         if(DPIClassification.DPI_320 === _loc2_)
         {
            §§push(0);
            if(_loc4_)
            {
               §§push(-(§§pop() - 40) + 44 - 58);
            }
         }
         else if(DPIClassification.DPI_480 === _loc2_)
         {
            §§push(1);
            if(_loc3_)
            {
               §§push(-(-((§§pop() + 1) * 12 - 15) - 19));
            }
         }
         else if(DPIClassification.DPI_320 === _loc2_)
         {
            §§push(2);
            if(_loc4_)
            {
               §§push(-((§§pop() - 109) * 94 + 1) - 1);
            }
         }
         else if(DPIClassification.DPI_240 === _loc2_)
         {
            §§push(3);
            if(_loc4_)
            {
               §§push((§§pop() + 1 + 1 + 1 + 1) * 6);
            }
         }
         else if(DPIClassification.DPI_120 === _loc2_)
         {
            §§push(4);
            if(_loc4_)
            {
               §§push((§§pop() + 95 + 7) * 3);
            }
         }
         else
         {
            §§push(5);
            if(_loc4_)
            {
               §§push(§§pop() - 1 - 1 + 23 + 1 - 5);
            }
         }
         switch(§§pop())
         {
            case 0:
               §§push();
               §§push(32);
               if(_loc4_)
               {
                  §§push((§§pop() - 92 - 75 - 1) * 36 + 1 + 1);
               }
               §§pop().gap = §§pop();
               §§push(this);
               §§push(4);
               if(_loc4_)
               {
                  §§push((§§pop() + 1 - 11 + 1 + 1 + 1 - 1) * 98);
               }
               §§pop().highlightWeight = §§pop();
               break;
            case 1:
               §§push();
               §§push(24);
               if(_loc4_)
               {
                  §§push((§§pop() - 1) * 31 * 17 - 64);
               }
               §§pop().gap = §§pop();
               §§push(this);
               §§push(3);
               if(_loc3_)
               {
                  §§push((§§pop() - 1 - 33) * 42 * 15 + 1 - 1);
               }
               §§pop().highlightWeight = §§pop();
               break;
            case 2:
               §§push();
               §§push(16);
               if(_loc4_)
               {
                  §§push(-(§§pop() * 9 - 1 - 109));
               }
               §§pop().gap = §§pop();
               §§push(this);
               §§push(2);
               if(_loc4_)
               {
                  §§push(§§pop() - 61 - 49 + 1 - 1);
               }
               §§pop().highlightWeight = §§pop();
               break;
            case 3:
               §§push();
               §§push(12);
               if(_loc4_)
               {
                  §§push(((§§pop() + 1 - 1) * 9 - 1 + 1 + 1) * 86);
               }
               §§pop().gap = §§pop();
               §§push(this);
               §§push(1);
               if(_loc3_)
               {
                  §§push(-(§§pop() - 1 + 71 - 1 + 1) + 1);
               }
               §§pop().highlightWeight = §§pop();
               break;
            case 4:
               §§push();
               §§push(6);
               if(_loc3_)
               {
                  §§push((§§pop() - 49 - 1) * 8 + 76 + 1);
               }
               §§pop().gap = §§pop();
               §§push(this);
               §§push(1);
               if(_loc4_)
               {
                  §§push(-(§§pop() + 113) - 1 + 62 + 106);
               }
               §§pop().highlightWeight = §§pop();
               break;
            default:
               §§push();
               §§push(8);
               if(_loc4_)
               {
                  §§push((§§pop() - 1 - 1) * 69 + 44);
               }
               §§pop().gap = §§pop();
               §§push(this);
               §§push(1);
               if(_loc4_)
               {
                  §§push((-§§pop() - 87) * 42 + 91 - 102 + 12 + 116);
               }
               §§pop().highlightWeight = §§pop();
         }
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         this.eraseFill = new Sprite();
         this.eraseFill.blendMode = BlendMode.ERASE;
         parent.addChildAt(this.eraseFill,parent.getChildIndex(this));
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         super.updateDisplayList(param1,param2);
         graphics.clear();
         this.eraseFill.graphics.clear();
         var _loc3_:Object = parent;
         var _loc4_:Callout = _loc3_.hostComponent;
         var _loc5_:String = _loc4_.arrowDirection;
         if(_loc5_ == ArrowDirection.NONE)
         {
            return;
         }
         var _loc6_:Graphics = this.graphics;
         var _loc7_:Graphics = this.eraseFill.graphics;
         var _loc8_:Number = param1;
         var _loc9_:Number = param2;
         §§push(0);
         if(_loc38_)
         {
            §§push(-(§§pop() + 11) + 2 + 66);
         }
         var _loc10_:Number = §§pop();
         §§push(0);
         if(_loc37_)
         {
            §§push((§§pop() - 28 + 35 + 1) * 77);
         }
         var _loc11_:Number = §§pop();
         §§push(0);
         if(_loc38_)
         {
            §§push(-((§§pop() - 49 - 1) * 82 - 1) - 26);
         }
         var _loc12_:Number = §§pop();
         §§push(0);
         if(_loc37_)
         {
            §§push(§§pop() + 52 + 1 + 1 - 63 + 63 - 1 - 1);
         }
         var _loc13_:Number = §§pop();
         §§push(0);
         if(_loc37_)
         {
            §§push((§§pop() - 1 - 109 - 1) * 41 + 1);
         }
         var _loc14_:Number = §§pop();
         §§push(0);
         if(_loc37_)
         {
            §§push((§§pop() - 1) * 27 + 1);
         }
         var _loc15_:Number = §§pop();
         var _loc16_:Number = getStyle("borderThickness");
         var _loc17_:uint = getStyle("borderColor");
         var _loc18_:Boolean = !isNaN(_loc16_) && §§pop() > §§pop();
         if(_loc18_)
         {
            §§push(Number(_loc16_));
         }
         else
         {
            §§push(0);
            if(_loc38_)
            {
               §§push(--(§§pop() - 1 + 23 - 1 + 1));
            }
            §§push(Number(§§pop()));
         }
         var _loc19_:Number = §§pop();
         §§push(_loc19_);
         §§push(2);
         if(_loc38_)
         {
            §§push(-((§§pop() + 1) * 64) - 1 - 5 - 1);
         }
         var _loc20_:Number = §§pop() / §§pop();
         var _loc21_:Boolean = false;
         if(_loc5_ == ArrowDirection.LEFT || _loc5_ == ArrowDirection.RIGHT)
         {
            _loc21_ = true;
            _loc10_ = -_loc20_;
            _loc11_ = gap;
            §§push(_loc9_);
            §§push(gap);
            §§push(2);
            if(_loc37_)
            {
               §§push((-§§pop() + 37) * 114);
            }
            _loc9_ = §§pop() - §§pop() * §§pop();
            _loc12_ = _loc8_ - _loc20_;
            §§push(_loc11_);
            §§push(_loc9_);
            §§push(2);
            if(_loc37_)
            {
               §§push(-((--§§pop() + 1) * 60) * 94 * 6);
            }
            _loc13_ = §§pop() + §§pop() / §§pop();
            _loc14_ = _loc10_;
            _loc15_ = _loc11_ + _loc9_;
            if(_loc5_ == ArrowDirection.LEFT)
            {
               _loc10_ = _loc8_ - _loc10_;
               _loc12_ = _loc8_ - _loc12_;
               _loc14_ = _loc8_ - _loc14_;
            }
         }
         else
         {
            _loc10_ = gap;
            _loc11_ = -_loc20_;
            §§push(_loc8_);
            §§push(gap);
            §§push(2);
            if(_loc38_)
            {
               §§push(-(-§§pop() + 65 - 1) + 1 + 1);
            }
            _loc8_ = §§pop() - §§pop() * §§pop();
            §§push(_loc10_);
            §§push(_loc8_);
            §§push(2);
            if(_loc38_)
            {
               §§push(§§pop() + 1 - 16 - 1 - 48 + 1);
            }
            _loc12_ = §§pop() + §§pop() / §§pop();
            _loc13_ = _loc9_ - _loc20_;
            _loc14_ = _loc10_ + _loc8_;
            _loc15_ = _loc11_;
            if(_loc4_.arrowDirection == ArrowDirection.UP)
            {
               _loc11_ = _loc9_ - _loc11_;
               _loc13_ = _loc9_ - _loc13_;
               _loc15_ = _loc9_ - _loc15_;
            }
         }
         §§push(Vector.<int>);
         §§push(3);
         if(_loc37_)
         {
            §§push(-(-§§pop() - 89 + 1) * 34 * 117);
         }
         var _loc22_:Vector.<int> = new §§pop()(§§pop(),true);
         §§push(_loc22_);
         §§push(0);
         if(_loc38_)
         {
            §§push(((§§pop() - 30) * 116 + 1) * 17 * 115);
         }
         §§pop()[§§pop()] = GraphicsPathCommand.MOVE_TO;
         §§push(_loc22_);
         §§push(1);
         if(_loc38_)
         {
            §§push(-((-(§§pop() - 1) + 54 - 1 + 1) * 14));
         }
         §§pop()[§§pop()] = GraphicsPathCommand.LINE_TO;
         §§push(_loc22_);
         §§push(2);
         if(_loc38_)
         {
            §§push(-((§§pop() - 61 - 1 + 87) * 80 * 6) - 1);
         }
         §§pop()[§§pop()] = GraphicsPathCommand.LINE_TO;
         §§push(Vector.<Number>);
         §§push(6);
         if(_loc38_)
         {
            §§push(-§§pop() + 1 + 14);
         }
         var _loc23_:Vector.<Number> = new §§pop()(§§pop(),true);
         §§push(_loc23_);
         §§push(0);
         if(_loc38_)
         {
            §§push((§§pop() + 105) * 119 * 117 * 7 + 28 - 1);
         }
         §§pop()[§§pop()] = _loc10_;
         §§push(_loc23_);
         §§push(1);
         if(_loc37_)
         {
            §§push(-(§§pop() * 41 + 1 - 1 - 1 + 1) - 1);
         }
         §§pop()[§§pop()] = _loc11_;
         §§push(_loc23_);
         §§push(2);
         if(_loc38_)
         {
            §§push(-(-§§pop() + 1 - 1));
         }
         §§pop()[§§pop()] = _loc12_;
         §§push(_loc23_);
         §§push(3);
         if(_loc37_)
         {
            §§push(-(-((§§pop() - 1) * 19) * 107 - 1));
         }
         §§pop()[§§pop()] = _loc13_;
         §§push(_loc23_);
         §§push(4);
         if(_loc37_)
         {
            §§push(§§pop() + 1 - 1 - 52 - 1 + 1 - 11);
         }
         §§pop()[§§pop()] = _loc14_;
         §§push(_loc23_);
         §§push(5);
         if(_loc37_)
         {
            §§push((§§pop() * 67 * 41 + 1 - 109 + 9) * 25);
         }
         §§pop()[§§pop()] = _loc15_;
         var _loc24_:Number = getStyle("backgroundColor");
         var _loc25_:Number = getStyle("backgroundAlpha");
         if(!useBackgroundGradient)
         {
            _loc6_.beginFill(_loc24_,_loc25_);
         }
         if(_loc18_)
         {
            §§push(0);
            if(_loc37_)
            {
               §§push(-(§§pop() + 13 + 76 - 1));
            }
            _loc32_ = §§pop();
            §§push(0);
            if(_loc37_)
            {
               §§push((--(-§§pop() + 8) + 87) * 13);
            }
            _loc33_ = §§pop();
            §§push(0);
            if(_loc37_)
            {
               §§push((-§§pop() + 1) * 76);
            }
            _loc34_ = §§pop();
            §§push(0);
            if(_loc38_)
            {
               §§push(-(-(--§§pop() + 114) - 65));
            }
            _loc35_ = §§pop();
            if(ArrowDirection.UP === _loc36_)
            {
               §§push(0);
               if(_loc38_)
               {
                  §§push(((§§pop() + 50) * 34 * 43 - 1) * 97);
               }
            }
            else if(ArrowDirection.DOWN === _loc36_)
            {
               §§push(1);
               if(_loc37_)
               {
                  §§push(-(-§§pop() - 1));
               }
            }
            else if(ArrowDirection.LEFT === _loc36_)
            {
               §§push(2);
               if(_loc37_)
               {
                  §§push((-(§§pop() - 75) + 27 - 1 - 78 - 1) * 100);
               }
            }
            else if(ArrowDirection.RIGHT === _loc36_)
            {
               §§push(3);
               if(_loc38_)
               {
                  §§push((-(§§pop() - 1) - 76 - 39 - 1 + 98) * 66);
               }
            }
            else
            {
               §§push(4);
               if(_loc37_)
               {
                  §§push((§§pop() - 103 - 115) * 49 + 116 - 1 - 18);
               }
            }
            switch(§§pop())
            {
               case 0:
                  _loc32_ = _loc10_;
                  _loc33_ = _loc11_;
                  _loc34_ = _loc8_;
                  _loc35_ = _loc19_;
                  break;
               case 1:
                  _loc32_ = _loc10_;
                  _loc33_ = -_loc19_;
                  _loc34_ = _loc8_;
                  _loc35_ = _loc19_;
                  break;
               case 2:
                  _loc32_ = _loc10_;
                  _loc33_ = _loc11_;
                  _loc34_ = _loc19_;
                  _loc35_ = _loc9_;
                  break;
               case 3:
                  _loc32_ = -_loc19_;
                  _loc33_ = _loc11_;
                  _loc34_ = _loc19_;
                  _loc35_ = _loc9_;
            }
            _loc6_.drawRect(_loc32_,_loc33_,_loc34_,_loc35_);
         }
         §§push(_loc25_);
         §§push(1);
         if(_loc37_)
         {
            §§push((§§pop() + 48 - 119) * 43 * 0 * 49 + 1);
         }
         if(§§pop() < §§pop())
         {
            this.eraseFill.x = getLayoutBoundsX();
            this.eraseFill.y = getLayoutBoundsY();
            §§push(_loc7_);
            §§push(0);
            if(_loc37_)
            {
               §§push(-(((-§§pop() - 101) * 101 - 66) * 94) + 100);
            }
            §§pop().beginFill(§§pop(),1);
            _loc7_.drawPath(_loc22_,_loc23_);
            _loc7_.endFill();
         }
         if(_loc18_)
         {
            §§push(_loc6_);
            §§push(_loc16_);
            §§push(_loc17_);
            §§push(1);
            if(_loc37_)
            {
               §§push((§§pop() * 22 * 113 + 84 + 7 - 98) * 87);
            }
            §§pop().lineStyle(§§pop(),§§pop(),§§pop(),true);
         }
         _loc6_.drawPath(_loc22_,_loc23_);
         _loc6_.endFill();
         var _loc26_:* = _loc5_ == ArrowDirection.UP;
         var _loc27_:Number = !!_loc26_?Number(param2):Number(-getLayoutBoundsY());
         var _loc28_:Number = gap - getLayoutBoundsX();
         var _loc29_:Number = this.highlightWeight * 1.5;
         var _loc30_:Number = _loc29_ + _loc27_;
         §§push(IVisualElement(_loc3_).getLayoutBoundsWidth());
         §§push(gap);
         §§push(2);
         if(_loc38_)
         {
            §§push(§§pop() + 63 - 1 - 79 + 13 + 42);
         }
         var _loc31_:Number = §§pop() - §§pop() * §§pop();
         if(_loc21_)
         {
            _loc31_ = _loc31_ - _loc8_;
            if(_loc5_ == ArrowDirection.LEFT)
            {
               _loc28_ = _loc28_ + _loc8_;
            }
         }
      }
   }
}
