package mx.states
{
   import mx.core.mx_internal;
   import flash.utils.Dictionary;
   import mx.core.UIComponent;
   import mx.core.ComponentDescriptor;
   import mx.core.IStateClient2;
   import flash.events.EventDispatcher;
   
   use namespace mx_internal;
   
   public class SetEventHandler extends OverrideBase
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      private static var installedHandlers:Dictionary;
       
      
      private var oldHandlerFunction:Function;
      
      public var name:String;
      
      public var handlerFunction:Function;
      
      public var originalHandlerFunction:Function;
      
      public var target:Object;
      
      private var appliedTarget:Object;
      
      public function SetEventHandler(param1:EventDispatcher = null, param2:String = null)
      {
         super();
         this.target = param1;
         this.name = param2;
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(param1 == "handler")
         {
            this.handlerFunction = param2;
         }
         super.addEventListener(param1,param2,param3,param4,param5);
      }
      
      override public function apply(param1:UIComponent) : void
      {
         var _loc3_:UIComponent = null;
         var _loc4_:ComponentDescriptor = null;
         parentContext = param1;
         var _loc2_:* = getOverrideContext(this.target,param1);
         if(_loc2_ != null)
         {
            this.appliedTarget = _loc2_;
            _loc3_ = _loc2_ as UIComponent;
            if(!installedHandlers)
            {
               installedHandlers = new Dictionary(true);
            }
            if(installedHandlers[_loc2_] && installedHandlers[_loc2_][this.name])
            {
               this.oldHandlerFunction = installedHandlers[_loc2_][this.name];
               _loc2_.removeEventListener(this.name,this.oldHandlerFunction);
            }
            else if(this.originalHandlerFunction != null)
            {
               this.oldHandlerFunction = this.originalHandlerFunction;
               _loc2_.removeEventListener(this.name,this.oldHandlerFunction);
            }
            else if(_loc3_ && _loc3_.descriptor)
            {
               _loc4_ = _loc3_.descriptor;
               if(_loc4_.events && _loc4_.events[this.name])
               {
                  this.oldHandlerFunction = _loc3_.document[_loc4_.events[this.name]];
                  _loc2_.removeEventListener(this.name,this.oldHandlerFunction);
               }
            }
            if(this.handlerFunction != null)
            {
               _loc2_.addEventListener(this.name,this.handlerFunction,false,0,true);
               if(!(param1.document is IStateClient2))
               {
                  if(installedHandlers[_loc2_] == undefined)
                  {
                     installedHandlers[_loc2_] = {};
                  }
                  installedHandlers[_loc2_][this.name] = this.handlerFunction;
               }
               enableBindings(_loc2_,param1,this.name,false);
            }
         }
         else if(!applied)
         {
            addContextListener(this.target);
         }
         applied = true;
      }
      
      override public function remove(param1:UIComponent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:* = null;
         var _loc2_:* = getOverrideContext(this.appliedTarget,param1);
         if(_loc2_ != null && this.appliedTarget)
         {
            if(this.handlerFunction != null)
            {
               _loc2_.removeEventListener(this.name,this.handlerFunction);
            }
            if(this.oldHandlerFunction != null)
            {
               _loc2_.addEventListener(this.name,this.oldHandlerFunction,false,0,true);
            }
            if(installedHandlers[_loc2_])
            {
               _loc3_ = true;
               delete installedHandlers[_loc2_][this.name];
               for(_loc4_ in installedHandlers[_loc2_])
               {
                  _loc3_ = false;
               }
               if(_loc3_)
               {
                  delete installedHandlers[_loc2_];
               }
            }
            enableBindings(_loc2_,param1,this.name);
         }
         else
         {
            removeContextListener();
         }
         applied = false;
         parentContext = null;
         this.appliedTarget = null;
      }
   }
}
