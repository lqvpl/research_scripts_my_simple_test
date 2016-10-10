package com.enfluid.ltp.view.components
{
   import mx.core.UIComponent;
   import mx.styles.CSSStyleDeclaration;
   import mx.core.FlexGlobals;
   import mx.graphics.SolidColorStroke;
   import flash.utils.Timer;
   import mx.events.FlexEvent;
   import flash.filesystem.FileStream;
   import flash.filesystem.File;
   import flash.filesystem.FileMode;
   import flash.utils.setTimeout;
   import flash.events.TimerEvent;
   import mx.graphics.SolidColor;
   import mx.events.PropertyChangeEvent;
   import spark.effects.Resize;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   
   public final class Spinner extends UIComponent
   {
      
      private static var STYLE_TICK_COLOR:String = "tickColor";
      
      private static var classConstructed:Boolean = classConstruct();
       
      
      private var tickColorChanged:Boolean;
      
      private var creation:Boolean = true;
      
      private var fadeTimer:Timer;
      
      private var _isPlaying:Boolean;
      
      private var _numTicks:int = 15;
      
      private var numTicksChanged:Boolean;
      
      private var _size:Number = 30;
      
      private var sizeChanged:Boolean;
      
      private var _tickWidth:Number = 5;
      
      private var tickWidthChanged:Boolean;
      
      private var _speed:int = 1000;
      
      private var _895162581fadeSpeed:int = 600;
      
      public var autoPlay:Boolean = true;
      
      public function Spinner()
      {
         super();
         addEventListener(FlexEvent.CREATION_COMPLETE,this.handleCreationComplete);
      }
      
      private static function classConstruct() : Boolean
      {
         var _loc1_:CSSStyleDeclaration = null;
         if(!FlexGlobals.topLevelApplication.styleManager.getStyleDeclaration("Spinner"))
         {
            _loc1_ = new CSSStyleDeclaration();
            §§push(_loc1_);
            §§push(STYLE_TICK_COLOR);
            §§push(0);
            if(_loc3_)
            {
               §§push(--§§pop() - 1 - 1 - 1);
            }
            §§pop().setStyle(§§pop(),§§pop());
            FlexGlobals.topLevelApplication.styleManager.setStyleDeclaration("Spinner",_loc1_,true);
         }
         return true;
      }
      
      private final function handleCreationComplete(param1:FlexEvent) : void
      {
         removeEventListener(FlexEvent.CREATION_COMPLETE,this.handleCreationComplete);
         if(this.autoPlay)
         {
            this.play();
         }
      }
      
      override protected function measure() : void
      {
         super.measure();
         width = this._size;
         height = this._size;
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         §§push(0);
         if(_loc17_)
         {
            §§push(-(§§pop() + 22 + 1) * 6 - 7);
         }
         var _loc4_:* = §§pop();
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         §§push(0);
         if(_loc17_)
         {
            §§push(§§pop() - 1 - 102 + 1 + 52 - 74 + 61 + 1);
         }
         var _loc8_:uint = §§pop();
         var _loc9_:Number = NaN;
         §§push(0);
         if(_loc16_)
         {
            §§push(-§§pop() + 98 + 1 - 18 + 49 - 70);
         }
         var _loc10_:* = §§pop();
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Tick = null;
         if(this.tickColorChanged || this.numTicksChanged || this.sizeChanged || this.tickWidthChanged || this.creation)
         {
            this.creation = false;
            _loc3_ = this._isPlaying;
            this.stop();
            _loc4_ = int(numChildren - 1);
            while(true)
            {
               §§push(_loc4_);
               §§push(0);
               if(_loc17_)
               {
                  §§push((§§pop() + 109 - 51) * 57 - 1);
               }
               if(§§pop() < §§pop())
               {
                  break;
               }
               removeChildAt(_loc4_);
               _loc4_--;
            }
            §§push(this.size);
            §§push(2);
            if(_loc16_)
            {
               §§push(§§pop() + 1 - 105 - 91 - 58);
            }
            _loc5_ = §§pop() / §§pop();
            §§push(2);
            if(_loc16_)
            {
               §§push(§§pop() * 103 - 1 + 1 + 1);
            }
            _loc6_ = §§pop() * Math.PI / this._numTicks;
            §§push(this._tickWidth);
            §§push(-1);
            if(_loc17_)
            {
               §§push(-((§§pop() + 1) * 114) + 1);
            }
            if(§§pop() != §§pop())
            {
               §§push(Number(this._tickWidth));
            }
            else
            {
               §§push(this.size);
               §§push(10);
               if(_loc17_)
               {
                  §§push(-(§§pop() - 1 + 1 + 1));
               }
               §§push(Number(§§pop() / §§pop()));
            }
            _loc7_ = §§pop();
            _loc8_ = getStyle(STYLE_TICK_COLOR);
            §§push(0);
            if(_loc17_)
            {
               §§push(-(§§pop() + 1 - 1 + 1 - 1 + 1) - 12);
            }
            _loc9_ = §§pop();
            §§push(0);
            if(_loc16_)
            {
               §§push((§§pop() - 80) * 5 + 65 + 73 + 3);
            }
            _loc10_ = §§pop();
            while(_loc10_ < this._numTicks)
            {
               §§push(_loc5_);
               §§push(Math.sin(_loc9_));
               §§push(this._numTicks);
               §§push(2);
               if(_loc17_)
               {
                  §§push((-(§§pop() - 1 - 1 + 107) + 100) * 42);
               }
               §§push((§§pop() + §§pop()) * _loc7_);
               §§push(2);
               if(_loc17_)
               {
                  §§push((§§pop() - 1 - 29) * 19);
               }
               _loc11_ = §§pop() + §§pop() * (§§pop() / §§pop() / Math.PI);
               §§push(_loc5_);
               §§push(Math.cos(_loc9_));
               §§push(this._numTicks);
               §§push(2);
               if(_loc17_)
               {
                  §§push((-(§§pop() - 39 - 1 + 1) + 1) * 113);
               }
               §§push((§§pop() + §§pop()) * _loc7_);
               §§push(2);
               if(_loc16_)
               {
                  §§push((-((§§pop() - 20) * 41) + 1) * 43);
               }
               _loc12_ = §§pop() - §§pop() * (§§pop() / §§pop() / Math.PI);
               _loc13_ = _loc5_ + Math.sin(_loc9_) * (_loc5_ - _loc7_);
               _loc14_ = _loc5_ - Math.cos(_loc9_) * (_loc5_ - _loc7_);
               _loc15_ = new Tick(_loc11_,_loc12_,_loc13_,_loc14_,_loc7_,_loc8_);
               _loc15_.alpha = 0.1;
               this.addChild(_loc15_);
               _loc9_ = _loc9_ + _loc6_;
               _loc10_++;
            }
            if(_loc3_)
            {
               this.play();
            }
            this.tickColorChanged = false;
            this.numTicksChanged = false;
            this.sizeChanged = false;
            this.tickWidthChanged = false;
         }
      }
      
      override public function styleChanged(param1:String) : void
      {
         if(param1 == STYLE_TICK_COLOR)
         {
            this.tickColorChanged = true;
            invalidateDisplayList();
         }
      }
      
      public final function play() : void
      {
         if(!this._isPlaying)
         {
            §§push(this);
            §§push();
            §§push(this.speed / this._numTicks);
            §§push(0);
            if(_loc3_)
            {
               §§push(((§§pop() - 59) * 39 + 1 - 1) * 41);
            }
            §§pop().fadeTimer = new §§pop().Timer(§§pop(),§§pop());
            this.fadeTimer.addEventListener(TimerEvent.TIMER,function(param1:TimerEvent):void
            {
               var _loc3_:Tick = null;
               var _loc2_:int = int(fadeTimer.currentCount % _numTicks);
               if(numChildren > _loc2_)
               {
                  _loc3_ = getChildAt(_loc2_) as Tick;
                  §§push(_loc3_);
                  §§push(fadeSpeed);
                  §§push(1);
                  if(_loc4_)
                  {
                     §§push(-(-(§§pop() * 59 - 1) - 1) - 44);
                  }
                  if(§§pop() != §§pop())
                  {
                     §§push(Number(fadeSpeed));
                  }
                  else
                  {
                     §§push(speed);
                     §§push(6);
                     if(_loc4_)
                     {
                        §§push((§§pop() + 29 + 1 + 1 - 1 + 116) * 62);
                     }
                     §§push(§§pop() * §§pop());
                     §§push(10);
                     if(_loc5_)
                     {
                        §§push((§§pop() - 29 - 1 + 1) * 99 * 70);
                     }
                     §§push(Number(§§pop() / §§pop()));
                  }
                  §§pop().fade(§§pop());
               }
            });
            this.fadeTimer.start();
            this._isPlaying = true;
         }
      }
      
      public final function stop() : void
      {
         if(this.fadeTimer != null && this.fadeTimer.running)
         {
            this._isPlaying = false;
            this.fadeTimer.stop();
         }
      }
      
      private function set _3530753size(param1:Number) : void
      {
         if(param1 != this._size)
         {
            this._size = param1;
            this.sizeChanged = true;
            invalidateDisplayList();
            invalidateSize();
         }
      }
      
      public function get size() : Number
      {
         return this._size;
      }
      
      private function set _1899263344numTicks(param1:int) : void
      {
         if(param1 != this._numTicks)
         {
            this._numTicks = param1;
            this.numTicksChanged = true;
            invalidateDisplayList();
         }
      }
      
      public function get numTicks() : int
      {
         return this._numTicks;
      }
      
      private function set _84384215tickWidth(param1:int) : void
      {
         if(param1 != this._tickWidth)
         {
            this._tickWidth = param1;
            this.tickWidthChanged = true;
            invalidateDisplayList();
         }
      }
      
      public function get tickWidth() : int
      {
         return this._tickWidth;
      }
      
      private function set _109641799speed(param1:int) : void
      {
         if(param1 != this._speed)
         {
            this._speed = param1;
            if(this.fadeTimer != null)
            {
               this.fadeTimer.stop();
               this.fadeTimer.delay = param1 / this._numTicks;
               this.fadeTimer.start();
            }
         }
      }
      
      public function get speed() : int
      {
         return this._speed;
      }
      
      public function get isPlaying() : Boolean
      {
         return this._isPlaying;
      }
      
      public function set pause(param1:Boolean) : void
      {
         if(param1)
         {
            this.stop();
            return;
         }
         this.play();
      }
      
      [Bindable(event="propertyChange")]
      public function get fadeSpeed() : int
      {
         return this._895162581fadeSpeed;
      }
      
      public function set fadeSpeed(param1:int) : void
      {
         var _loc2_:Object = this._895162581fadeSpeed;
         if(_loc2_ !== param1)
         {
            this._895162581fadeSpeed = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fadeSpeed",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function set size(param1:Number) : void
      {
         var _loc2_:Object = this.size;
         if(_loc2_ !== param1)
         {
            this._3530753size = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"size",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function set numTicks(param1:int) : void
      {
         var _loc2_:Object = this.numTicks;
         if(_loc2_ !== param1)
         {
            this._1899263344numTicks = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numTicks",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function set tickWidth(param1:int) : void
      {
         var _loc2_:Object = this.tickWidth;
         if(_loc2_ !== param1)
         {
            this._84384215tickWidth = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tickWidth",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function set speed(param1:int) : void
      {
         var _loc2_:Object = this.speed;
         if(_loc2_ !== param1)
         {
            this._109641799speed = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"speed",_loc2_,param1));
            }
         }
      }
   }
}
