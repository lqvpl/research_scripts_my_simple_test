package com.enfluid.ltp.view
{
   import spark.components.HGroup;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import com.adobe.cairngorm.observer.Observe;
   import spark.primitives.Rect;
   import spark.components.Button;
   import com.enfluid.ltp.view.components.LTPComboBox;
   import mx.core.IFlexModuleFactory;
   import spark.events.IndexChangeEvent;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.SelectProjectCommand;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import flash.utils.setTimeout;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import com.enfluid.ltp.view.skins.LTPComboBoxSkin;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.ProjectDropDownItemRenderer;
   import com.enfluid.ltp.view.skins.AddProjectsButtonSkin;
   import flash.events.MouseEvent;
   import com.hurlant.crypto.hash.IHash;
   import flash.utils.ByteArray;
   import mx.binding.Binding;
   import mx.collections.IList;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import system.data.List;
   import system.Reflection;
   import system.data.lists.ArrayList;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class SelectProjectSection extends HGroup implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _SelectProjectSection_Observe1:Observe;
      
      public var _SelectProjectSection_Rect1:Rect;
      
      private var _144773105createProjectButton:Button;
      
      private var _410426060projectsCombo:LTPComboBox;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var createProjectCallout:com.enfluid.ltp.view.CreateProjectCallout;
      
      private var _104069929model:DataModel;
      
      private var _1589792892viewModel:ViewModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SelectProjectSection()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._104069929model = DataModel.instance;
         this._1589792892viewModel = ViewModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._SelectProjectSection_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_SelectProjectSectionWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return SelectProjectSection[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc3_)
         {
            §§push(---(-(§§pop() - 1) + 40) * 16);
         }
         §§pop().percentWidth = §§pop();
         §§push(this);
         §§push(10);
         if(_loc3_)
         {
            §§push(-§§pop() + 21 - 1 + 1);
         }
         §§pop().paddingBottom = §§pop();
         §§push(this);
         §§push(10);
         if(_loc4_)
         {
            §§push(-(-((§§pop() - 110) * 43) - 1 + 1));
         }
         §§pop().paddingLeft = §§pop();
         §§push(this);
         §§push(10);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 - 29 + 60 + 40 - 1 + 49);
         }
         §§pop().paddingRight = §§pop();
         §§push(this);
         §§push(10);
         if(_loc4_)
         {
            §§push(-(§§pop() * 27) * 30 + 1 - 1 - 1);
         }
         §§pop().paddingTop = §§pop();
         this.mxmlContent = [this._SelectProjectSection_Rect1_i(),this._SelectProjectSection_LTPComboBox1_i(),this._SelectProjectSection_Button1_i()];
         this._SelectProjectSection_Observe1_i();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() * 20 - 110 - 0) * 106 + 111 + 49);
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
         SelectProjectSection._watcherSetupUtil = param1;
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
      
      private final function onChangeShowCreateProjectCallout(param1:Boolean) : void
      {
         if(!this.createProjectCallout)
         {
            this.createProjectCallout = new com.enfluid.ltp.view.CreateProjectCallout();
         }
         if(param1)
         {
            if(this.viewModel.showLicensePopup)
            {
               §§push();
               §§push(this.onChangeShowCreateProjectCallout);
               §§push(500);
               if(_loc3_)
               {
                  §§push((§§pop() - 1) * 24 * 32 - 80 + 117 + 1);
               }
               §§pop().setTimeout(§§pop(),§§pop(),[param1]);
               return;
            }
            this.createProjectCallout.open(this.createProjectButton,this.model.projects && §§pop() > §§pop()?false:true);
         }
         else
         {
            this.createProjectCallout.close();
         }
      }
      
      private final function _SelectProjectSection_Observe1_i() : Observe
      {
         var _loc1_:Observe = new Observe();
         this._SelectProjectSection_Observe1 = _loc1_;
         BindingManager.executeBindings(this,"_SelectProjectSection_Observe1",this._SelectProjectSection_Observe1);
         return _loc1_;
      }
      
      private final function _SelectProjectSection_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.includeInLayout = false;
         _loc1_.fill = this._SelectProjectSection_SolidColor1_c();
         _loc1_.initialized(this,"_SelectProjectSection_Rect1");
         this._SelectProjectSection_Rect1 = _loc1_;
         BindingManager.executeBindings(this,"_SelectProjectSection_Rect1",this._SelectProjectSection_Rect1);
         return _loc1_;
      }
      
      private final function _SelectProjectSection_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(15856629);
         if(_loc2_)
         {
            §§push(-(§§pop() - 15 + 1 - 1));
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _SelectProjectSection_LTPComboBox1_i() : LTPComboBox
      {
         var _loc1_:LTPComboBox = new LTPComboBox();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 1) - 1 - 1) + 31);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(32);
         if(_loc2_)
         {
            §§push((§§pop() * 79 + 24) * 77 - 1);
         }
         §§pop().height = §§pop();
         _loc1_.labelField = "title";
         _loc1_.styleName = "ltpComboBox";
         _loc1_.itemRenderer = this._SelectProjectSection_ClassFactory1_c();
         _loc1_.prompt = "select a project";
         §§push(_loc1_);
         §§push("color");
         §§push(3355443);
         if(_loc3_)
         {
            §§push(--(§§pop() + 43 - 1));
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc2_)
         {
            §§push(((§§pop() + 85) * 55 - 99) * 34 + 114);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("rollOverColor");
         §§push(16777215);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 1 - 1) * 43 + 75);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("selectionColor");
         §§push(16777215);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 15) + 118 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("verticalScrollPolicy","auto");
         §§push(_loc1_);
         §§push("contentBackgroundColor");
         §§push(16777215);
         if(_loc2_)
         {
            §§push(§§pop() + 58 + 36 + 81);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("buttonColor");
         §§push(13158600);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 117 - 1) * 44 - 18 - 107 - 100);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("skinClass",LTPComboBoxSkin);
         _loc1_.addEventListener("change",this.__projectsCombo_change);
         _loc1_.id = "projectsCombo";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.projectsCombo = _loc1_;
         BindingManager.executeBindings(this,"projectsCombo",this.projectsCombo);
         return _loc1_;
      }
      
      private final function _SelectProjectSection_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ProjectDropDownItemRenderer;
         return _loc1_;
      }
      
      public final function __projectsCombo_change(param1:IndexChangeEvent) : void
      {
         new SelectProjectCommand(ProjectVO(this.projectsCombo.selectedItem)).execute();
      }
      
      private final function _SelectProjectSection_Button1_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(32);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) - 80);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(32);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 1) * 34);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(§§pop() - 26 - 1 + 74) - 1);
         }
         §§pop().right = §§pop();
         _loc1_.toolTip = "Create a New Project";
         _loc1_.setStyle("skinClass",AddProjectsButtonSkin);
         _loc1_.addEventListener("click",this.__createProjectButton_click);
         _loc1_.id = "createProjectButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.createProjectButton = _loc1_;
         BindingManager.executeBindings(this,"createProjectButton",this.createProjectButton);
         return _loc1_;
      }
      
      public final function __createProjectButton_click(param1:MouseEvent) : void
      {
         this.viewModel.isProjectEditMode = false;
         this.viewModel.showCreateProjectCallout = !this.viewModel.showCreateProjectCallout;
      }
      
      private final function _SelectProjectSection_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 50 + 1 - 14 + 57 - 1 - 10);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return viewModel.showCreateProjectCallout;
         },null,"_SelectProjectSection_Observe1.source");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() - 84) * 92 + 52 - 1 - 111 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Function
         {
            return onChangeShowCreateProjectCallout;
         },null,"_SelectProjectSection_Observe1.handler");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(§§pop() + 46) + 1 + 17 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.width;
         },null,"_SelectProjectSection_Rect1.width");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push((-(§§pop() - 101) - 1 - 1) * 24);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.height;
         },null,"_SelectProjectSection_Rect1.height");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 11));
         }
         §§pop()[§§pop()] = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            projectsCombo.setStyle("focusSkin",param1);
         },"projectsCombo.focusSkin");
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(§§pop() + 40 + 82 + 3 - 83) + 27);
         }
         §§pop()[§§pop()] = new Binding(this,function():IList
         {
            return model.projects;
         },null,"projectsCombo.dataProvider");
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push(§§pop() - 36 - 1 - 54 - 17 - 44 - 75);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return model.selectedProject;
         },null,"projectsCombo.selectedItem");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get createProjectButton() : Button
      {
         return this._144773105createProjectButton;
      }
      
      public function set createProjectButton(param1:Button) : void
      {
         var _loc2_:Object = this._144773105createProjectButton;
         if(_loc2_ !== param1)
         {
            this._144773105createProjectButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"createProjectButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get projectsCombo() : LTPComboBox
      {
         return this._410426060projectsCombo;
      }
      
      public function set projectsCombo(param1:LTPComboBox) : void
      {
         var _loc2_:Object = this._410426060projectsCombo;
         if(_loc2_ !== param1)
         {
            this._410426060projectsCombo = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"projectsCombo",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get model() : DataModel
      {
         return this._104069929model;
      }
      
      private function set model(param1:DataModel) : void
      {
         var _loc2_:Object = this._104069929model;
         if(_loc2_ !== param1)
         {
            this._104069929model = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"model",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get viewModel() : ViewModel
      {
         return this._1589792892viewModel;
      }
      
      private function set viewModel(param1:ViewModel) : void
      {
         var _loc2_:Object = this._1589792892viewModel;
         if(_loc2_ !== param1)
         {
            this._1589792892viewModel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"viewModel",_loc2_,param1));
            }
         }
      }
   }
}
