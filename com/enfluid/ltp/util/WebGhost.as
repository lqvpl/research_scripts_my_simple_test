package com.enfluid.ltp.util
{
   import mx.controls.HTML;
   import mx.graphics.GradientEntry;
   import mx.binding.BindingManager;
   import flash.utils.ByteArray;
   import com.enfluid.ltp.view.components.Link;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.events.Event;
   import flash.utils.Timer;
   import mx.controls.Spacer;
   import spark.events.TextOperationEvent;
   import flash.events.TimerEvent;
   import spark.components.TextInput;
   import com.enfluid.ltp.view.skins.FlatUIComponents.TextInput.FlatTextInputSkinSolo;
   import spark.primitives.Rect;
   import spark.components.gridClasses.GridColumn;
   import system.serializers.§eden:release§.debug;
   import system.text.parser.GenericParser;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import hr.binaria.asx3m.converters.IMarshallingContext;
   import com.enfluid.ltp.view.components.LTPProgressButton;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import mx.graphics.SolidColor;
   import com.enfluid.ltp.view.components.KeywordNotesCallout;
   import flash.events.NativeWindowDisplayStateEvent;
   import com.enfluid.ltp.view.SelectProjectSection;
   import spark.components.CheckBox;
   import mx.events.PropertyChangeEvent;
   
   public final class WebGhost extends HTML
   {
       
      
      private var _84303URL:String;
      
      private var _GodMode:Boolean;
      
      public var CaptchaCallback:Function;
      
      public var ShowDOMUnAvailable:Boolean = false;
      
      public var OnComplete:Function = null;
      
      public var Mode:String;
      
      public var CheckerFunction:Function;
      
      public var CallbackFunction:Function;
      
      private var _DOMReady:Boolean = false;
      
      private var CaptchaChallenge:String;
      
      private var WaitForCallback:Function;
      
      private var WaitForChecker:Function;
      
      private var RenderReset:Timer;
      
      private var TimeOutTimer:Timer;
      
      public function WebGhost()
      {
         §§push(this);
         §§push();
         §§push(4444);
         if(_loc1_)
         {
            §§push(§§pop() - 48 + 87 - 1);
         }
         §§pop().RenderReset = new §§pop().Timer(§§pop(),0);
         super();
         this.RenderReset.addEventListener(TimerEvent.TIMER,this.WaitChecker);
         this.addEventListener("render",this.Render);
         this.addEventListener("htmlDOMInitialize",this.DOMReady);
         this.addEventListener("locationChange",this.NewLocation);
         this.addEventListener("complete",this.LoadComplete);
      }
      
      public static function fireKeyUp(param1:Object, param2:Object, param3:uint, param4:uint) : void
      {
         var _loc5_:Object = param2.document.createEvent("Events");
         _loc5_.initEvent("keyup",true,true);
         _loc5_.view = param2;
         _loc5_.altKey = false;
         _loc5_.ctrlKey = false;
         _loc5_.shiftKey = false;
         _loc5_.metaKey = false;
         _loc5_.keyCode = param3;
         _loc5_.charCode = param4;
         param1.dispatchEvent(_loc5_);
      }
      
      public static function fireChange(param1:Object, param2:Object) : void
      {
         var _loc3_:Object = param2.document.createEvent("Events");
         _loc3_.initEvent("change",true,true);
         _loc3_.view = param2;
         param1.dispatchEvent(_loc3_);
      }
      
      public static function fireClick(param1:Object, param2:Object) : void
      {
         var _loc3_:Object = param2.document.createEvent("Events");
         _loc3_.initEvent("click",true,true);
         _loc3_.view = param2;
         param1.dispatchEvent(_loc3_);
      }
      
      public static function fireMouseUp(param1:*, param2:Object) : void
      {
         var _loc3_:* = param2.document.createEvent("MouseEvents");
         _loc3_.initMouseEvent("mouseup",true,true);
         _loc3_.view = param2;
         param1.dispatchEvent(_loc3_);
      }
      
      public static function enterText(param1:String, param2:Object, param3:Object) : void
      {
         param2.value = param1;
         WebGhost.fireChange(param2,param3);
      }
      
      public static function enterTextAndPressEnter(param1:String, param2:Object, param3:Object) : void
      {
         param2.value = param1;
         WebGhost.fireChange(param2,param3);
         WebGhost.fireKeyUp(param2,param3,Keyboard.ENTER,Keyboard.ENTER);
      }
      
      public static function setCheckBoxValue(param1:Object, param2:Boolean, param3:Object) : void
      {
         if(param1.checked != param2)
         {
            fireClick(param1,param3);
         }
      }
      
      public static function selectOptionsInListBox(param1:String, param2:Object, param3:Object) : void
      {
         §§push(0);
         if(_loc6_)
         {
            §§push(-(-(§§pop() + 1 + 1) + 31 - 104));
         }
         var _loc4_:* = §§pop();
         while(_loc4_ < param2.childNodes.length)
         {
            if(param2.childNodes[_loc4_].text == param1)
            {
               param2.childNodes[_loc4_].selected = true;
               break;
            }
            param2.childNodes[_loc4_].selected = false;
            _loc4_++;
         }
         fireChange(param2,param3);
      }
      
      public function get GodMode() : Boolean
      {
         return this._GodMode;
      }
      
      public function set GodMode(param1:Boolean) : void
      {
         this._GodMode = param1;
         if(this._DOMReady)
         {
            if(param1)
            {
               this.domWindow.document.addEventListener("click",this.ToolTipper);
            }
            else
            {
               this.domWindow.document.removeEventListener("click",this.ToolTipper);
            }
         }
      }
      
      public final function ChangeMode(param1:String, param2:String = null, param3:int = 22222) : void
      {
         this.Mode = param1;
         if(param2 != null)
         {
            this.location = param2;
         }
         this.WaitFor(this.CheckerFunction,this.CallbackFunction,param3);
      }
      
      public final function FormValue(param1:String, param2:String, param3:* = null) : void
      {
         var _loc7_:* = undefined;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:* = this.FindByID(param1);
         if(_loc6_)
         {
            if(_loc6_.hasOwnProperty("contentEditable"))
            {
               _loc6_.contentEditable = true;
            }
            if(_loc6_.hasOwnProperty("value"))
            {
               _loc6_.value = param2;
               _loc4_ = true;
            }
            if(_loc4_ && param3 != null)
            {
               if(param3 == true)
               {
                  param3 = param1;
               }
               _loc7_ = this.FindByID(param3);
               if(_loc7_.hasOwnProperty("submit"))
               {
                  _loc7_.submit();
                  _loc5_ = true;
               }
               else if(_loc7_.hasOwnProperty("form"))
               {
                  _loc7_ = _loc7_.form;
                  if(_loc7_.hasOwnProperty("submit"))
                  {
                     _loc7_.submit();
                     _loc5_ = true;
                  }
               }
            }
         }
      }
      
      public final function Init() : void
      {
      }
      
      public final function DOMReady(param1:Event) : void
      {
         this._DOMReady = false;
      }
      
      public final function LoadComplete(param1:Event) : void
      {
         this._DOMReady = true;
         this.GodMode = this._GodMode;
         this.WaitChecker(param1);
         if(this.OnComplete != null)
         {
            this.OnComplete(param1);
         }
      }
      
      public final function NewLocation(param1:Event) : void
      {
         this._DOMReady = false;
         this.URL = this.location;
         this.WaitChecker(param1);
      }
      
      public final function WaitFor(param1:Function, param2:Function, param3:int = 0) : void
      {
         this.WaitForChecker = param1;
         this.WaitForCallback = param2;
         if(param3)
         {
            if(this.TimeOutTimer)
            {
               this.TimeOutTimer.stop();
               this.TimeOutTimer.reset();
            }
            else
            {
               §§push(this);
               §§push();
               §§push(param3);
               §§push(1);
               if(_loc4_)
               {
                  §§push(-(§§pop() - 1) - 1);
               }
               §§pop().TimeOutTimer = new §§pop().Timer(§§pop(),§§pop());
               this.TimeOutTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.TimeOut);
            }
            this.TimeOutTimer.start();
         }
      }
      
      public final function Render(param1:Event) : void
      {
         if(this.WaitForChecker != null)
         {
            if(!this.RenderReset.running)
            {
               this.RenderReset.start();
            }
         }
      }
      
      public final function Has(param1:String, param2:String, param3:String) : *
      {
         var _loc4_:Boolean = false;
         var _loc5_:Object = new Object();
         _loc5_.tagName = param1;
         _loc5_[param2] = param3;
         _loc4_ = this.Find(_loc5_);
         return _loc4_;
      }
      
      public final function Click(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:* = this.FindByID(param1);
         _loc2_ = this.ClickItem(_loc3_);
         return _loc2_;
      }
      
      public final function ClickByName(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:* = this.FindBy("name",param1);
         _loc2_ = this.ClickItem(_loc3_);
         return _loc2_;
      }
      
      public final function SetValue(param1:String, param2:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:* = this.FindByID(param1);
         _loc3_ = this.Assign(_loc4_,param2);
         return _loc3_;
      }
      
      public final function SetValueByName(param1:String, param2:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:* = this.FindBy("name",param1);
         _loc3_ = this.Assign(_loc4_,param2);
         return _loc3_;
      }
      
      public final function ToolTipper(param1:*) : void
      {
         var _loc2_:Object = new Object();
         _loc2_.Title = "Tag Info";
         _loc2_.Tag = param1.target;
         _loc2_.ShowCancel = false;
      }
      
      public final function FindByID(param1:String) : *
      {
         var _loc2_:* = null;
         §§push(0);
         if(_loc6_)
         {
            §§push((§§pop() + 119 - 83 - 15 + 1 - 1) * 77 * 46);
         }
         for(_loc2_ in this.domWindow.document.all)
         {
            if(this.domWindow.document.all[_loc2_].hasOwnProperty("id"))
            {
               if(this.domWindow.document.all[_loc2_].id == param1)
               {
                  return this.domWindow.document.all[_loc2_];
               }
            }
         }
         return null;
      }
      
      public final function FindFirst(param1:String) : *
      {
         var _loc2_:* = null;
         §§push(0);
         if(_loc6_)
         {
            §§push((§§pop() + 10) * 89 * 71 + 1 - 1 - 38);
         }
         for(_loc2_ in this.domWindow.document.all)
         {
            if(this.domWindow.document.all[_loc2_].hasOwnProperty("tagName"))
            {
               if(this.domWindow.document.all[_loc2_].tagName == param1)
               {
                  return this.domWindow.document.all[_loc2_];
               }
            }
         }
         return null;
      }
      
      public final function NewTag(param1:String, param2:String) : *
      {
         var _loc3_:* = this.domWindow.document.createElement(param2);
         _loc3_.id = param1;
         return _loc3_;
      }
      
      public final function AppendChild(param1:*, param2:*) : void
      {
         param1.appendChild(param2);
      }
      
      public final function FindBy(param1:String, param2:String) : *
      {
         var _loc3_:* = null;
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() - 1) + 1);
         }
         for(_loc3_ in this.domWindow.document.all)
         {
            if(this.domWindow.document.all[_loc3_].hasOwnProperty(param1))
            {
               if(this.domWindow.document.all[_loc3_][param1] == param2)
               {
                  return this.domWindow.document.all[_loc3_];
               }
            }
         }
         return null;
      }
      
      public final function FindAll(param1:String, param2:String) : *
      {
         var _loc4_:* = null;
         var _loc3_:Array = new Array();
         §§push(0);
         if(_loc7_)
         {
            §§push(-((§§pop() + 1 + 68) * 12 * 41));
         }
         for(_loc4_ in this.domWindow.document.all)
         {
            if(this.domWindow.document.all[_loc4_].hasOwnProperty(param1))
            {
               if(this.domWindow.document.all[_loc4_][param1] == param2)
               {
                  _loc3_.push(this.domWindow.document.all[_loc4_]);
               }
            }
         }
         return _loc3_;
      }
      
      public final function MultiSearchAll(param1:Object) : *
      {
         var _loc3_:* = null;
         var _loc4_:Boolean = false;
         var _loc5_:* = null;
         var _loc2_:Array = new Array();
         §§push(0);
         if(_loc10_)
         {
            §§push(§§pop() * 66 - 35 - 1 - 1 + 63 - 46);
         }
         for(_loc3_ in this.domWindow.document.all)
         {
            _loc4_ = true;
            §§push(0);
            if(_loc11_)
            {
               §§push(-(-§§pop() + 1 + 1) * 9);
            }
            for(_loc5_ in param1)
            {
               if(!this.domWindow.document.all[_loc3_].hasOwnProperty(_loc5_) || this.domWindow.document.all[_loc3_][_loc5_] != param1[_loc5_])
               {
                  _loc4_ = false;
               }
            }
            if(_loc4_)
            {
               _loc2_.push(this.domWindow.document.all[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      public final function MultiSearch(param1:Object) : *
      {
         var _loc2_:* = null;
         var _loc3_:Boolean = false;
         var _loc4_:* = null;
         §§push(0);
         if(_loc9_)
         {
            §§push((§§pop() + 1) * 119 - 1 - 16 + 1);
         }
         for(_loc2_ in this.domWindow.document.all)
         {
            _loc3_ = true;
            §§push(0);
            if(_loc10_)
            {
               §§push(-(-§§pop() + 59 - 111));
            }
            for(_loc4_ in param1)
            {
               if(!this.domWindow.document.all[_loc2_].hasOwnProperty(_loc4_) || this.domWindow.document.all[_loc2_][_loc4_] != param1[_loc4_])
               {
                  _loc3_ = false;
               }
            }
            if(_loc3_)
            {
               return this.domWindow.document.all[_loc2_];
            }
         }
         return null;
      }
      
      public final function FindAllWith(param1:Object) : *
      {
         var _loc3_:* = null;
         var _loc4_:Boolean = false;
         var _loc5_:* = null;
         var _loc2_:Array = new Array();
         §§push(0);
         if(_loc11_)
         {
            §§push(-((§§pop() * 64 - 114) * 47) + 46);
         }
         for(_loc3_ in this.domWindow.document.all)
         {
            _loc4_ = true;
            §§push(0);
            if(_loc11_)
            {
               §§push(§§pop() - 1 - 110 + 76);
            }
            for(_loc5_ in param1)
            {
               if(!this.domWindow.document.all[_loc3_].hasOwnProperty(_loc5_))
               {
                  _loc4_ = false;
               }
            }
            if(_loc4_)
            {
               _loc2_.push(this.domWindow.document.all[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      public final function FindAllHaving(param1:String, param2:String, param3:String = null, param4:Boolean = false, param5:Boolean = false) : *
      {
         var _loc7_:* = null;
         var _loc8_:Boolean = false;
         var _loc9_:* = false;
         var _loc6_:Array = new Array();
         §§push(0);
         if(_loc13_)
         {
            §§push(-(§§pop() + 69 - 1 - 24));
         }
         for(_loc7_ in this.domWindow.document.all)
         {
            _loc8_ = true;
            if(param1)
            {
               if(!this.domWindow.document.all[_loc7_].hasOwnProperty("tagName") || this.domWindow.document.all[_loc7_].tagName != param1)
               {
                  _loc8_ = false;
               }
            }
            if(_loc8_)
            {
               if(this.domWindow.document.all[_loc7_].hasOwnProperty(param2))
               {
                  if(param4 || this.domWindow.document.all[_loc7_][param2])
                  {
                     _loc9_ = false;
                     if(param5)
                     {
                        _loc9_ = this.domWindow.document.all[_loc7_][param2] == param3;
                     }
                     else if(param3)
                     {
                        if(this.domWindow.document.all[_loc7_][param2])
                        {
                           §§push(this.domWindow.document.all[_loc7_][param2].indexOf(param3));
                           §§push(-1);
                           if(_loc12_)
                           {
                              §§push(§§pop() + 1 - 60 - 1);
                           }
                           _loc9_ = §§pop() > §§pop();
                        }
                        else
                        {
                           _loc9_ = Boolean(param4);
                        }
                     }
                     else
                     {
                        _loc9_ = true;
                     }
                     if(param3 == null || _loc9_)
                     {
                        _loc6_.push(this.domWindow.document.all[_loc7_]);
                     }
                  }
               }
            }
         }
         return _loc6_;
      }
      
      public final function Find(param1:Object) : *
      {
         var _loc2_:* = null;
         var _loc3_:Boolean = false;
         var _loc4_:* = null;
         §§push(0);
         if(_loc10_)
         {
            §§push(-(§§pop() + 1) * 20 - 1);
         }
         for(_loc2_ in this.domWindow.document.all)
         {
            _loc3_ = true;
            §§push(0);
            if(_loc9_)
            {
               §§push((---(§§pop() * 55) * 30 + 24) * 68);
            }
            for(_loc4_ in param1)
            {
               if(!this.domWindow.document.all[_loc2_].hasOwnProperty(_loc4_) || this.domWindow.document.all[_loc2_][_loc4_] != param1[_loc4_])
               {
                  _loc3_ = false;
               }
            }
            if(_loc3_)
            {
               return this.domWindow.document.all[_loc2_];
            }
         }
         return null;
      }
      
      public final function Navigate(param1:String) : void
      {
         this.location = param1;
      }
      
      private final function WaitSuccess(param1:Boolean) : void
      {
         this.RenderReset.stop();
         if(this.TimeOutTimer)
         {
            this.TimeOutTimer.stop();
            this.TimeOutTimer.reset();
         }
         this.WaitForChecker = null;
         if(this.WaitForCallback is Function)
         {
            this.WaitForCallback(param1);
         }
      }
      
      private final function TimeOut(param1:Event) : void
      {
         this.WaitSuccess(false);
      }
      
      private final function ClickItem(param1:*) : Boolean
      {
         var _loc3_:* = undefined;
         var _loc2_:Boolean = false;
         if(param1.hasOwnProperty("click"))
         {
            if(param1.hasOwnProperty("form"))
            {
               _loc3_ = param1.form;
               _loc3_.submit();
            }
            else
            {
               param1.click();
            }
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      private final function Assign(param1:*, param2:String) : Boolean
      {
         var _loc3_:Boolean = false;
         if(param1)
         {
            if(param1.hasOwnProperty("value"))
            {
               param1.value = param2;
               _loc3_ = true;
            }
            else
            {
               if("Button" === _loc4_)
               {
                  §§push(0);
                  if(_loc5_)
                  {
                     §§push(§§pop() - 1 + 41 + 73);
                  }
               }
               else
               {
                  §§push(1);
                  if(_loc6_)
                  {
                     §§push((§§pop() - 62 - 45 - 1) * 43);
                  }
               }
               switch(§§pop())
               {
                  case 0:
               }
            }
         }
         return _loc3_;
      }
      
      private final function WaitChecker(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         if(this.WaitForChecker is Function)
         {
            _loc2_ = this.WaitForChecker();
         }
         if(_loc2_)
         {
            this.WaitSuccess(true);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get URL() : String
      {
         return this._84303URL;
      }
      
      public function set URL(param1:String) : void
      {
         var _loc2_:Object = this._84303URL;
         if(_loc2_ !== param1)
         {
            this._84303URL = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"URL",_loc2_,param1));
            }
         }
      }
   }
}
