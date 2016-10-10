package com.enfluid.ltp.view.RankChecker
{
   import com.enfluid.ltp.view.containers.CollapsiblePanel;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.ComboBox;
   import spark.components.TextInput;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.target;
   import mx.binding.Binding;
   import mx.utils.StringUtil;
   import com.enfluid.ltp.util.KeywordUtil;
   import com.enfluid.ltp.controller.rankchecker.AddRankCheckItemCommand;
   import flash.events.Event;
   import mx.effects.Sequence;
   import spark.layouts.VerticalLayout;
   import com.enfluid.ltp.view.skins.FlatUIComponents.Combobox.CustomComboboxSkin;
   import mx.binding.BindingManager;
   import flash.events.TextEvent;
   import spark.components.HGroup;
   import mx.graphics.SolidColor;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.view.skins.FlatUIComponents.TextInput.FlatTextInputSkinSolo;
   import mx.events.FlexEvent;
   import spark.components.Button;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import com.enfluid.ltp.view.skins.MinimalFlatButtonSkin;
   import spark.primitives.Rect;
   import mx.collections.IList;
   import mx.events.PropertyChangeEvent;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class AddRankCheckerItemPanel extends CollapsiblePanel implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _1272084508cmbDomain:ComboBox;
      
      private var _624613751tiSearchTerm:TextInput;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      private var _1589792892viewModel:ViewModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function AddRankCheckerItemPanel()
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
         var bindings:Array = this._AddRankCheckerItemPanel_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_RankChecker_AddRankCheckerItemPanelWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return AddRankCheckerItemPanel[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push((-(§§pop() * 51) * 20 + 61 + 1) * 3);
         }
         §§pop().percentWidth = §§pop();
         this.layout = this._AddRankCheckerItemPanel_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._AddRankCheckerItemPanel_Array1_c);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(--§§pop() - 17 + 86 + 1);
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
         AddRankCheckerItemPanel._watcherSetupUtil = param1;
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
      
      private final function launchAddRankCheckItemCommand() : void
      {
         var _loc2_:String = null;
         if(StringUtil.trim(this.cmbDomain.textInput.text) == "")
         {
            this.cmbDomain.errorString = "enter or select a domain";
            return;
         }
         this.cmbDomain.errorString = "";
         var _loc1_:String = this.tiSearchTerm.text;
         _loc2_ = this.cmbDomain.textInput.text;
         this.tiSearchTerm.text = "";
         this.tiSearchTerm.setFocus();
         _loc2_ = KeywordUtil.stripHttpAndWww(_loc2_);
         this.cmbDomain.textInput.text = _loc2_;
         new AddRankCheckItemCommand(_loc2_,_loc1_).execute();
      }
      
      protected final function cmbDomain_textInputHandler(param1:Event) : void
      {
         if(StringUtil.trim(this.cmbDomain.textInput.text) != "")
         {
            this.cmbDomain.errorString = "";
         }
      }
      
      private final function _AddRankCheckerItemPanel_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 1) * 40 + 1 + 1 - 18 - 1);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(-(-§§pop() * 31 * 85 + 93) * 13 - 27);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(§§pop() - 56 - 1 - 1) + 62 + 74);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(§§pop() - 116 + 93 - 1 + 1);
         }
         §§pop().paddingTop = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push((-(-§§pop() + 48) + 9 - 1 + 1) * 80);
         }
         §§pop().gap = §§pop();
         return _loc1_;
      }
      
      private final function _AddRankCheckerItemPanel_Array1_c() : Array
      {
         var _loc1_:Array = [this._AddRankCheckerItemPanel_ComboBox1_i(),this._AddRankCheckerItemPanel_HGroup1_c()];
         return _loc1_;
      }
      
      private final function _AddRankCheckerItemPanel_ComboBox1_i() : ComboBox
      {
         var _loc1_:ComboBox = new ComboBox();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() + 110 + 107 + 110 + 20 + 1));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(32);
         if(_loc3_)
         {
            §§push(§§pop() * 49 * 9 * 96);
         }
         §§pop().height = §§pop();
         _loc1_.prompt = "Enter a Domain, URL or Partial URL";
         _loc1_.setStyle("verticalScrollPolicy","auto");
         _loc1_.setStyle("skinClass",CustomComboboxSkin);
         _loc1_.addEventListener("textInput",this.__cmbDomain_textInput);
         _loc1_.addEventListener("paste",this.__cmbDomain_paste);
         _loc1_.id = "cmbDomain";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cmbDomain = _loc1_;
         BindingManager.executeBindings(this,"cmbDomain",this.cmbDomain);
         return _loc1_;
      }
      
      public final function __cmbDomain_textInput(param1:TextEvent) : void
      {
         this.cmbDomain_textInputHandler(param1);
      }
      
      public final function __cmbDomain_paste(param1:Event) : void
      {
         this.cmbDomain_textInputHandler(param1);
      }
      
      private final function _AddRankCheckerItemPanel_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 102 - 1 - 10 - 1) * 57 + 65);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 1 + 45 - 1) * 117 + 1);
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._AddRankCheckerItemPanel_TextInput1_i(),this._AddRankCheckerItemPanel_Button1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _AddRankCheckerItemPanel_TextInput1_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((-(§§pop() * 6 + 69) * 116 + 48) * 79 + 64);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(32);
         if(_loc2_)
         {
            §§push((-(§§pop() + 83 + 1 - 90) + 15 - 78) * 6);
         }
         §§pop().height = §§pop();
         _loc1_.prompt = "Enter a Search Term";
         _loc1_.setStyle("skinClass",FlatTextInputSkinSolo);
         _loc1_.addEventListener("enter",this.__tiSearchTerm_enter);
         _loc1_.id = "tiSearchTerm";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tiSearchTerm = _loc1_;
         BindingManager.executeBindings(this,"tiSearchTerm",this.tiSearchTerm);
         return _loc1_;
      }
      
      public final function __tiSearchTerm_enter(param1:FlexEvent) : void
      {
         this.launchAddRankCheckItemCommand();
      }
      
      private final function _AddRankCheckerItemPanel_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(40);
         if(_loc2_)
         {
            §§push((§§pop() + 118) * 63 * 0 + 1);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((-§§pop() - 1 - 14 + 1) * 59 + 20);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.label = "Add";
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc3_)
         {
            §§push(§§pop() + 93 - 54 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("skinClass",MinimalFlatButtonSkin);
         _loc1_.addEventListener("click",this.___AddRankCheckerItemPanel_Button1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___AddRankCheckerItemPanel_Button1_click(param1:MouseEvent) : void
      {
         this.launchAddRankCheckItemCommand();
      }
      
      private final function _AddRankCheckerItemPanel_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() * 71 + 1 + 1 - 47 + 22);
         }
         §§pop()[§§pop()] = new Binding(this,function():IList
         {
            return model.rankDomains;
         },null,"cmbDomain.dataProvider");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get cmbDomain() : ComboBox
      {
         return this._1272084508cmbDomain;
      }
      
      public function set cmbDomain(param1:ComboBox) : void
      {
         var _loc2_:Object = this._1272084508cmbDomain;
         if(_loc2_ !== param1)
         {
            this._1272084508cmbDomain = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cmbDomain",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tiSearchTerm() : TextInput
      {
         return this._624613751tiSearchTerm;
      }
      
      public function set tiSearchTerm(param1:TextInput) : void
      {
         var _loc2_:Object = this._624613751tiSearchTerm;
         if(_loc2_ !== param1)
         {
            this._624613751tiSearchTerm = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tiSearchTerm",_loc2_,param1));
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
