package com.enfluid.ltp.view.renderers
{
   import spark.components.supportClasses.ItemRenderer;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.Image;
   import spark.components.Label;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import flash.events.Event;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.EditProjectCommand;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.DeleteProjectCommand;
   import spark.layouts.HorizontalLayout;
   import mx.binding.BindingManager;
   import flash.events.MouseEvent;
   import mx.controls.Spacer;
   import mx.graphics.SolidColor;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class ProjectDropDownItemRenderer extends ItemRenderer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _ProjectDropDownItemRenderer_Image1:Image;
      
      public var _ProjectDropDownItemRenderer_Image2:Image;
      
      public var _ProjectDropDownItemRenderer_Label1:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _309310695project:ProjectVO;
      
      private var _1777058202isRolledOver:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ProjectDropDownItemRenderer()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._ProjectDropDownItemRenderer_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_renderers_ProjectDropDownItemRendererWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ProjectDropDownItemRenderer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push(§§pop() + 1 - 1 + 1);
         }
         §§pop().percentWidth = §§pop();
         this.autoDrawBackground = true;
         this.layout = this._ProjectDropDownItemRenderer_HorizontalLayout1_c();
         this.mxmlContent = [this._ProjectDropDownItemRenderer_Label1_i(),this._ProjectDropDownItemRenderer_Image1_i(),this._ProjectDropDownItemRenderer_Spacer1_c(),this._ProjectDropDownItemRenderer_Image2_i()];
         this.addEventListener("rollOut",this.___ProjectDropDownItemRenderer_ItemRenderer1_rollOut);
         this.addEventListener("rollOver",this.___ProjectDropDownItemRenderer_ItemRenderer1_rollOver);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1) * 61) - 72 - 94 - 78);
         }
         var /*UnknownSlot*/:* = uint(§§pop());
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         ProjectDropDownItemRenderer._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      override public function set data(param1:Object) : void
      {
         this.project = param1 as ProjectVO;
         super.data = param1;
      }
      
      public final function editEvent_clickhand(param1:Event) : void
      {
         new EditProjectCommand(this.project).execute();
      }
      
      public final function deleteEvent_clickhand(param1:Event) : void
      {
         param1.preventDefault();
         new DeleteProjectCommand(this.project).execute();
      }
      
      private final function _ProjectDropDownItemRenderer_HorizontalLayout1_c() : HorizontalLayout
      {
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 17 + 36 + 1 - 1 + 1 - 1);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(-((§§pop() * 100 + 1) * 12 + 98 + 40));
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((-(§§pop() * 17) + 87 + 86 - 1 - 52) * 67);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((-§§pop() * 103 + 1) * 118 - 30 + 1 - 13);
         }
         §§pop().paddingTop = §§pop();
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(-5);
         if(_loc3_)
         {
            §§push((§§pop() + 98) * 113 - 96 + 1 - 1 + 1);
         }
         §§pop().gap = §§pop();
         return _loc1_;
      }
      
      private final function _ProjectDropDownItemRenderer_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((-§§pop() + 1) * 29 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(3355443);
         if(_loc3_)
         {
            §§push(((§§pop() - 83) * 110 - 1 - 1) * 108);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc2_)
         {
            §§push(-((-§§pop() - 18 + 1) * 72 - 1) * 89);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "_ProjectDropDownItemRenderer_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ProjectDropDownItemRenderer_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_ProjectDropDownItemRenderer_Label1",this._ProjectDropDownItemRenderer_Label1);
         return _loc1_;
      }
      
      private final function _ProjectDropDownItemRenderer_Image1_i() : Image
      {
         var _loc1_:Image = new Image();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() + 115 + 17 + 1);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) + 88 + 1);
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 116 - 1 - 105);
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.buttonMode = true;
         _loc1_.useHandCursor = true;
         _loc1_.addEventListener("mouseDown",this.___ProjectDropDownItemRenderer_Image1_mouseDown);
         _loc1_.id = "_ProjectDropDownItemRenderer_Image1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ProjectDropDownItemRenderer_Image1 = _loc1_;
         BindingManager.executeBindings(this,"_ProjectDropDownItemRenderer_Image1",this._ProjectDropDownItemRenderer_Image1);
         return _loc1_;
      }
      
      public final function ___ProjectDropDownItemRenderer_Image1_mouseDown(param1:MouseEvent) : void
      {
         this.editEvent_clickhand(param1);
      }
      
      private final function _ProjectDropDownItemRenderer_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 74 - 1 - 13 - 1);
         }
         §§pop().width = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _ProjectDropDownItemRenderer_Image2_i() : Image
      {
         var _loc1_:Image = new Image();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 + 1);
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(--(§§pop() + 84) + 1));
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.buttonMode = true;
         _loc1_.useHandCursor = true;
         _loc1_.addEventListener("mouseDown",this.___ProjectDropDownItemRenderer_Image2_mouseDown);
         _loc1_.id = "_ProjectDropDownItemRenderer_Image2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ProjectDropDownItemRenderer_Image2 = _loc1_;
         BindingManager.executeBindings(this,"_ProjectDropDownItemRenderer_Image2",this._ProjectDropDownItemRenderer_Image2);
         return _loc1_;
      }
      
      public final function ___ProjectDropDownItemRenderer_Image2_mouseDown(param1:MouseEvent) : void
      {
         this.deleteEvent_clickhand(param1);
      }
      
      public final function ___ProjectDropDownItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         this.isRolledOver = false;
      }
      
      public final function ___ProjectDropDownItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         this.isRolledOver = true;
      }
      
      private final function _ProjectDropDownItemRenderer_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() * 40 * 19 + 89));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = project == DataModel.instance.selectedProject?"bold":"normal";
            return _loc1_ == undefined?null:String(_loc1_);
         },function(param1:String):void
         {
            _ProjectDropDownItemRenderer_Label1.setStyle("fontWeight",param1);
         },"_ProjectDropDownItemRenderer_Label1.fontWeight");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) * 57);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = project.title;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_ProjectDropDownItemRenderer_Label1.text");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(---(§§pop() - 2 - 1 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.PROJECT_EDIT_ICON;
         },null,"_ProjectDropDownItemRenderer_Image1.source");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(§§pop() * 19 + 8 + 78) - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return isRolledOver;
         },null,"_ProjectDropDownItemRenderer_Image1.visible");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 - 19);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.X_IMAGE;
         },null,"_ProjectDropDownItemRenderer_Image2.source");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(-((§§pop() + 78 + 92) * 32) - 59 + 34 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return isRolledOver;
         },null,"_ProjectDropDownItemRenderer_Image2.visible");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get project() : ProjectVO
      {
         return this._309310695project;
      }
      
      private function set project(param1:ProjectVO) : void
      {
         var _loc2_:Object = this._309310695project;
         if(_loc2_ !== param1)
         {
            this._309310695project = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"project",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get isRolledOver() : Boolean
      {
         return this._1777058202isRolledOver;
      }
      
      private function set isRolledOver(param1:Boolean) : void
      {
         var _loc2_:Object = this._1777058202isRolledOver;
         if(_loc2_ !== param1)
         {
            this._1777058202isRolledOver = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isRolledOver",_loc2_,param1));
            }
         }
      }
   }
}
