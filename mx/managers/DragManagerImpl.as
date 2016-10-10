package mx.managers
{
   import flash.events.EventDispatcher;
   import mx.core.mx_internal;
   import mx.styles.IStyleManager2;
   import mx.core.IUIComponent;
   import mx.core.IFlexModule;
   import mx.styles.StyleManager;
   import mx.core.IFlexModuleFactory;
   import flash.events.IEventDispatcher;
   import mx.managers.dragClasses.DragProxy;
   import mx.core.DragSource;
   import flash.events.MouseEvent;
   import mx.core.IFlexDisplayObject;
   import flash.events.Event;
   import mx.styles.CSSStyleDeclaration;
   import mx.events.DragEvent;
   import flash.display.DisplayObject;
   import mx.core.UIComponentGlobals;
   import mx.core.ILayoutDirectionElement;
   import mx.core.LayoutDirection;
   import mx.utils.MatrixUtil;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import mx.events.Request;
   
   use namespace mx_internal;
   
   public class DragManagerImpl extends EventDispatcher implements mx.managers.IDragManager
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      private static var sm:mx.managers.ISystemManager;
      
      private static var instance:mx.managers.IDragManager;
      
      public static var mixins:Array;
       
      
      private var sandboxRoot:IEventDispatcher;
      
      private var dragInitiator:IUIComponent;
      
      public var dragProxy:DragProxy;
      
      public var bDoingDrag:Boolean = false;
      
      private var mouseIsDown:Boolean = false;
      
      public function DragManagerImpl()
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         super();
         if(instance)
         {
            throw new Error("Instance already exists.");
         }
         if(mixins)
         {
            _loc1_ = mixins.length;
            _loc2_ = 0;
            while(_loc2_ < _loc1_)
            {
               new mixins[_loc2_](this);
               _loc2_++;
            }
         }
         this.sandboxRoot = sm.getSandboxRoot();
         if(sm.isTopLevelRoot())
         {
            sm.addEventListener(MouseEvent.MOUSE_DOWN,this.sm_mouseDownHandler,false,0,true);
            sm.addEventListener(MouseEvent.MOUSE_UP,this.sm_mouseUpHandler,false,0,true);
         }
         if(hasEventListener("initialize"))
         {
            dispatchEvent(new Event("initialize"));
         }
      }
      
      public static function getInstance() : mx.managers.IDragManager
      {
         if(!instance)
         {
            sm = SystemManagerGlobals.topLevelSystemManagers[0];
            instance = new DragManagerImpl();
         }
         return instance;
      }
      
      private static function getStyleManager(param1:IUIComponent) : IStyleManager2
      {
         if(param1 is IFlexModule)
         {
            return StyleManager.getStyleManager(IFlexModule(param1).moduleFactory);
         }
         return StyleManager.getStyleManager(sm as IFlexModuleFactory);
      }
      
      public function get isDragging() : Boolean
      {
         return this.bDoingDrag;
      }
      
      public function doDrag(param1:IUIComponent, param2:DragSource, param3:MouseEvent, param4:IFlexDisplayObject = null, param5:Number = 0, param6:Number = 0, param7:Number = 0.5, param8:Boolean = true) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Event = null;
         var _loc20_:CSSStyleDeclaration = null;
         var _loc21_:Class = null;
         if(this.bDoingDrag)
         {
            return;
         }
         if(!(param3.type == MouseEvent.MOUSE_DOWN || param3.type == MouseEvent.CLICK || this.mouseIsDown || param3.buttonDown))
         {
            return;
         }
         this.bDoingDrag = true;
         if(hasEventListener("doDrag"))
         {
            dispatchEvent(new Event("doDrag"));
         }
         this.dragInitiator = param1;
         this.dragProxy = new DragProxy(param1,param2);
         if(hasEventListener("popUpChildren"))
         {
            _loc11_ = new DragEvent("popUpChildren",false,true,this.dragProxy);
         }
         if(!_loc11_ || dispatchEvent(_loc11_))
         {
            sm.popUpChildren.addChild(this.dragProxy);
         }
         if(!param4)
         {
            _loc20_ = getStyleManager(param1).getMergedStyleDeclaration("mx.managers.DragManager");
            _loc21_ = _loc20_.getStyle("defaultDragImageSkin");
            param4 = new _loc21_();
            this.dragProxy.addChild(DisplayObject(param4));
            _loc9_ = param1.width;
            _loc10_ = param1.height;
         }
         else
         {
            this.dragProxy.addChild(DisplayObject(param4));
            if(param4 is ILayoutManagerClient)
            {
               UIComponentGlobals.layoutManager.validateClient(ILayoutManagerClient(param4),true);
            }
            if(param4 is IUIComponent)
            {
               _loc9_ = (param4 as IUIComponent).getExplicitOrMeasuredWidth();
               _loc10_ = (param4 as IUIComponent).getExplicitOrMeasuredHeight();
            }
            else
            {
               _loc9_ = param4.measuredWidth;
               _loc10_ = param4.measuredHeight;
            }
         }
         if(param1 is ILayoutDirectionElement && ILayoutDirectionElement(param1).layoutDirection == LayoutDirection.RTL)
         {
            this.dragProxy.layoutDirection = LayoutDirection.RTL;
         }
         param4.setActualSize(_loc9_,_loc10_);
         this.dragProxy.setActualSize(_loc9_,_loc10_);
         this.dragProxy.alpha = param7;
         this.dragProxy.allowMove = param8;
         var _loc12_:Matrix = MatrixUtil.getConcatenatedMatrix(DisplayObject(param1),DisplayObject(this.sandboxRoot));
         _loc12_.tx = 0;
         _loc12_.ty = 0;
         var _loc13_:Matrix = param4.transform.matrix;
         if(_loc13_)
         {
            _loc12_.concat(param4.transform.matrix);
            param4.transform.matrix = _loc12_;
         }
         var _loc14_:Object = param3.target;
         if(_loc14_ == null)
         {
            _loc14_ = param1;
         }
         var _loc15_:Point = new Point(param3.localX,param3.localY);
         _loc15_ = DisplayObject(_loc14_).localToGlobal(_loc15_);
         _loc15_ = DisplayObject(this.sandboxRoot).globalToLocal(_loc15_);
         var _loc16_:Number = _loc15_.x;
         var _loc17_:Number = _loc15_.y;
         var _loc18_:Point = DisplayObject(param1).localToGlobal(new Point(-param5,-param6));
         _loc18_ = DisplayObject(this.sandboxRoot).globalToLocal(_loc18_);
         this.dragProxy.xOffset = _loc16_ - _loc18_.x;
         this.dragProxy.yOffset = _loc17_ - _loc18_.y;
         this.dragProxy.x = _loc18_.x;
         this.dragProxy.y = _loc18_.y;
         this.dragProxy.startX = this.dragProxy.x;
         this.dragProxy.startY = this.dragProxy.y;
         if(param4 is DisplayObject)
         {
            DisplayObject(param4).cacheAsBitmap = true;
         }
         var _loc19_:Object = this.dragProxy.automationDelegate;
         if(_loc19_)
         {
            _loc19_.recordAutomatableDragStart(param1,param3);
         }
      }
      
      public function acceptDragDrop(param1:IUIComponent) : void
      {
         if(this.dragProxy)
         {
            this.dragProxy.target = param1 as DisplayObject;
         }
         if(hasEventListener("acceptDragDrop"))
         {
            dispatchEvent(new Request("acceptDragDrop",false,false,param1));
         }
      }
      
      public function showFeedback(param1:String) : void
      {
         if(this.dragProxy)
         {
            if(param1 == DragManager.MOVE && !this.dragProxy.allowMove)
            {
               param1 = DragManager.COPY;
            }
            this.dragProxy.action = param1;
         }
         if(hasEventListener("showFeedback"))
         {
            dispatchEvent(new Request("showFeedback",false,false,param1));
         }
      }
      
      public function getFeedback() : String
      {
         var _loc1_:Request = null;
         if(hasEventListener("getFeedback"))
         {
            _loc1_ = new Request("getFeedback",false,true);
            if(!dispatchEvent(_loc1_))
            {
               return _loc1_.value as String;
            }
         }
         return !!this.dragProxy?this.dragProxy.action:DragManager.NONE;
      }
      
      public function endDrag() : void
      {
         var _loc1_:Event = null;
         if(hasEventListener("endDrag"))
         {
            _loc1_ = new Event("endDrag",false,true);
         }
         if(!_loc1_ || dispatchEvent(_loc1_))
         {
            if(this.dragProxy)
            {
               sm.popUpChildren.removeChild(this.dragProxy);
               if(this.dragProxy.numChildren > 0)
               {
                  this.dragProxy.removeChildAt(0);
               }
               this.dragProxy = null;
            }
         }
         this.dragInitiator = null;
         this.bDoingDrag = false;
      }
      
      private function sm_mouseDownHandler(param1:MouseEvent) : void
      {
         this.mouseIsDown = true;
      }
      
      private function sm_mouseUpHandler(param1:MouseEvent) : void
      {
         this.mouseIsDown = false;
      }
   }
}