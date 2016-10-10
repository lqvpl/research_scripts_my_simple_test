package com.enfluid.ltp.view
{
   import spark.components.Callout;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.Label;
   import spark.components.CheckBox;
   import spark.components.DataGrid;
   import spark.components.TextArea;
   import spark.components.TextInput;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import spark.formatters.NumberFormatter;
   import mx.binding.BindingManager;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import flash.filesystem.File;
   import flash.net.FileReference;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import flash.events.MouseEvent;
   import flash.net.FileFilter;
   import flash.events.Event;
   import com.enfluid.ltp.controller.common.SaveProxiesCommand;
   import com.enfluid.ltp.model.vo.ProxyVO;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import spark.components.gridClasses.GridColumn;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.util.Util;
   import spark.layouts.VerticalLayout;
   import mx.controls.HRule;
   import mx.controls.Spacer;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import com.enfluid.ltp.view.containers.CollapsiblePanel;
   import mx.core.DeferredInstanceFromFunction;
   import com.enfluid.ltp.view.skins.FlatUIComponents.TextInput.FlatTextInputSkinSolo;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import com.enfluid.ltp.view.components.Link;
   import flash.filesystem.FileStream;
   import flash.filesystem.FileMode;
   import flash.utils.ByteArray;
   import mx.collections.ArrayList;
   import com.enfluid.ltp.controller.common.SaveGoogleCredentialsCommand;
   import com.enfluid.ltp.view.components.ProxiesGridColumn;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.headers.ProxiesHeaderRenderer;
   import hr.binaria.asx3m.converters.IUnmarshallingContext;
   import mx.collections.ArrayCollection;
   import com.enfluid.ltp.view.skins.FlatUIComponents.HeaderRenderer.FlatDeleteColumnHeaderRenderer;
   import com.enfluid.ltp.view.renderers.DeleteColumnRenderer;
   import mx.events.FlexMouseEvent;
   import spark.events.PopUpEvent;
   import mx.binding.Binding;
   import mx.collections.IList;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class ProxiesCallout extends Callout implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _ProxiesCallout_Label2:Label;
      
      private var _430427636authenticateCB:CheckBox;
      
      private var _1295651058proxiesGrid:DataGrid;
      
      private var _1067713786proxiesTextArea:TextArea;
      
      private var _874760771tiHost:TextInput;
      
      private var _843257808tiPassword:TextInput;
      
      private var _874522474tiPort:TextInput;
      
      private var _1969010283tiUsername:TextInput;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _1721116373authenticate:Boolean;
      
      private var _file:File;
      
      private var _refAddFile:FileReference;
      
      private var _104069929model:DataModel;
      
      private var _1589792892viewModel:ViewModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ProxiesCallout()
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
         var bindings:Array = this._ProxiesCallout_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_ProxiesCalloutWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ProxiesCallout[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(1200);
         if(_loc4_)
         {
            §§push(§§pop() - 1 + 1 - 54 + 1);
         }
         §§pop().width = §§pop();
         §§push(this);
         §§push(800);
         if(_loc3_)
         {
            §§push(-((§§pop() - 77) * 56 + 56));
         }
         §§pop().height = §§pop();
         this.verticalPosition = "after";
         this.layout = this._ProxiesCallout_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ProxiesCallout_Array1_c);
         this.addEventListener("mouseDownOutside",this.___ProxiesCallout_Callout1_mouseDownOutside);
         this.addEventListener("close",this.___ProxiesCallout_Callout1_close);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() - 25 + 83 - 1));
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
         ProxiesCallout._watcherSetupUtil = param1;
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
      
      public final function toggleAuth() : void
      {
         if(this.authenticate == true)
         {
            this.authenticate = false;
         }
         else
         {
            this.authenticate = true;
         }
      }
      
      protected final function browseForProxyList(param1:MouseEvent) : void
      {
         this._refAddFile = new FileReference();
         var _loc2_:FileFilter = new FileFilter("Text","*.txt");
         this._refAddFile.addEventListener(Event.SELECT,this.onSelectFile);
         this._refAddFile.browse([_loc2_]);
      }
      
      protected final function importProxySetting(param1:MouseEvent) : void
      {
         new SaveProxiesCommand(this.proxiesTextArea.text).execute();
         this.proxiesTextArea.text = "";
      }
      
      protected final function saveProxy(param1:MouseEvent) : void
      {
         var _loc2_:ProxyVO = new ProxyVO();
         _loc2_.host = this.tiHost.text;
         _loc2_.port = int(this.tiPort.text);
         _loc2_.requiresAuth = this.authenticateCB.selected;
         _loc2_.authUsername = this.tiUsername.text;
         _loc2_.authPassword = this.tiPassword.text;
         _loc2_.save();
         this.model.proxies.addItem(_loc2_);
         this.tiHost.text = "";
         this.tiPort.text = "";
         this.tiUsername.text = "";
         this.tiPassword.text = "";
      }
      
      protected final function saveProxySetting(param1:MouseEvent) : void
      {
         new SavePreferencesCommand().execute();
      }
      
      private final function onFileLoaded(param1:Event) : void
      {
         var _loc2_:Object = param1.target.data;
         if(_loc2_)
         {
            new SaveProxiesCommand(_loc2_.toString()).execute();
         }
      }
      
      private final function onSelectFile(param1:Event) : void
      {
         this._refAddFile.addEventListener(Event.COMPLETE,this.onFileLoaded);
         this._refAddFile.load();
      }
      
      private final function authLabelFunction(param1:Object, param2:GridColumn) : String
      {
         var _loc3_:ProxyVO = param1 as ProxyVO;
         if(_loc3_.requiresAuth)
         {
            return _loc3_.authUsername + "/" + Util.maskPassword(param1[param2.dataField]);
         }
         return "-";
      }
      
      private final function statusLabelFunction(param1:Object, param2:GridColumn) : String
      {
         var _loc3_:ProxyVO = param1 as ProxyVO;
         if(_loc3_.isGettingCaptchas)
         {
            return "Currently receiving CAPTCHAs";
         }
         if(_loc3_.isFailing)
         {
            return "Failed last " + _loc3_.numRecentFailures + " requests.";
         }
         if(_loc3_.lastUsed)
         {
            return "Succesfully fetching data.";
         }
         return "";
      }
      
      private final function _ProxiesCallout_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         §§push(_loc1_);
         §§push(15);
         if(_loc3_)
         {
            §§push(--(-(§§pop() * 98 * 115) + 1) - 1);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc2_)
         {
            §§push(-(§§pop() - 49) * 111 - 1 + 69 - 1 - 99);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc3_)
         {
            §§push((-(§§pop() * 4) * 103 * 113 - 1) * 53 * 112);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc2_)
         {
            §§push((§§pop() + 56) * 111 - 117 + 1 - 62 - 32);
         }
         §§pop().paddingTop = §§pop();
         return _loc1_;
      }
      
      private final function _ProxiesCallout_Array1_c() : Array
      {
         var _loc1_:Array = [this._ProxiesCallout_Label1_c(),this._ProxiesCallout_HRule1_c(),this._ProxiesCallout_Label2_i(),this._ProxiesCallout_HRule2_c(),this._ProxiesCallout_Spacer1_c(),this._ProxiesCallout_HGroup1_c()];
         return _loc1_;
      }
      
      private final function _ProxiesCallout_Label1_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "About Using Proxies";
         §§push(_loc1_);
         §§push("color");
         §§push(8947848);
         if(_loc3_)
         {
            §§push(-((-(§§pop() - 1) - 13) * 56) + 53);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(18);
         if(_loc3_)
         {
            §§push((((§§pop() - 61) * 116 - 68) * 119 + 1) * 16 + 91);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _ProxiesCallout_HRule1_c() : HRule
      {
         var _loc1_:HRule = new HRule();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 18) + 70);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("strokeWidth");
         §§push(1);
         if(_loc2_)
         {
            §§push((--§§pop() - 71) * 116 + 1 + 42 - 29);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _ProxiesCallout_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-§§pop() + 98 + 1 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("paddingBottom");
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() - 82 - 1 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingTop");
         §§push(5);
         if(_loc3_)
         {
            §§push(-§§pop() - 86 + 66 + 1 + 1 + 11);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "_ProxiesCallout_Label2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ProxiesCallout_Label2 = _loc1_;
         BindingManager.executeBindings(this,"_ProxiesCallout_Label2",this._ProxiesCallout_Label2);
         return _loc1_;
      }
      
      private final function _ProxiesCallout_HRule2_c() : HRule
      {
         var _loc1_:HRule = new HRule();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() - 26 - 29 + 1) + 1 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("strokeWidth");
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() - 57 + 1 + 84);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _ProxiesCallout_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 1 + 42 + 1);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _ProxiesCallout_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() * 37 + 89 - 38);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() * 32 * 49));
         }
         §§pop().percentHeight = §§pop();
         _loc1_.mxmlContent = [this._ProxiesCallout_VGroup1_c(),this._ProxiesCallout_DataGrid1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _ProxiesCallout_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         §§push(_loc1_);
         §§push(300);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 102 - 39) * 35 * 51 * 38));
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() + 42 - 1 - 35 - 1);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 - 1 + 1);
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._ProxiesCallout_CollapsiblePanel1_c(),this._ProxiesCallout_CollapsiblePanel2_c(),this._ProxiesCallout_Spacer2_c(),this._ProxiesCallout_Button3_c(),this._ProxiesCallout_Button4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _ProxiesCallout_CollapsiblePanel1_c() : CollapsiblePanel
      {
         var _loc1_:CollapsiblePanel = new CollapsiblePanel();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-((§§pop() * 103 + 101 + 1 - 1) * 27 + 4));
         }
         §§pop().percentWidth = §§pop();
         _loc1_.title = "Add";
         _loc1_.layout = this._ProxiesCallout_VerticalLayout2_c();
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ProxiesCallout_Array4_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _ProxiesCallout_VerticalLayout2_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.horizontalAlign = "center";
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(--(§§pop() + 1) - 13);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 1 + 1 - 1 - 1) * 34);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(§§pop() * 75 - 112 - 60);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push((§§pop() * 44 + 113 - 119) * 22 * 57);
         }
         §§pop().paddingTop = §§pop();
         return _loc1_;
      }
      
      private final function _ProxiesCallout_Array4_c() : Array
      {
         var _loc1_:Array = [this._ProxiesCallout_TextInput1_i(),this._ProxiesCallout_TextInput2_i(),this._ProxiesCallout_CheckBox1_i(),this._ProxiesCallout_TextInput3_i(),this._ProxiesCallout_TextInput4_i(),this._ProxiesCallout_Button1_c()];
         return _loc1_;
      }
      
      private final function _ProxiesCallout_TextInput1_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((-(§§pop() - 116 - 68 + 72) - 20) * 67 - 118);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(32);
         if(_loc2_)
         {
            §§push(§§pop() * 48 - 66 - 1 - 76 + 101);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(39);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 1 - 95 - 1 - 25));
         }
         §§pop().maxChars = §§pop();
         _loc1_.prompt = "Host IP Address";
         _loc1_.setStyle("skinClass",FlatTextInputSkinSolo);
         _loc1_.id = "tiHost";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tiHost = _loc1_;
         BindingManager.executeBindings(this,"tiHost",this.tiHost);
         return _loc1_;
      }
      
      private final function _ProxiesCallout_TextInput2_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 1) * 95);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(32);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 57) * 50 - 100);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(§§pop() + 73) + 74 - 115 + 10);
         }
         §§pop().maxChars = §§pop();
         _loc1_.prompt = "Port Number";
         _loc1_.setStyle("skinClass",FlatTextInputSkinSolo);
         _loc1_.id = "tiPort";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tiPort = _loc1_;
         BindingManager.executeBindings(this,"tiPort",this.tiPort);
         return _loc1_;
      }
      
      private final function _ProxiesCallout_CheckBox1_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Requires Authentication";
         _loc1_.id = "authenticateCB";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.authenticateCB = _loc1_;
         BindingManager.executeBindings(this,"authenticateCB",this.authenticateCB);
         return _loc1_;
      }
      
      private final function _ProxiesCallout_TextInput3_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() * 75 * 110 * 73));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(32);
         if(_loc2_)
         {
            §§push((-§§pop() - 112) * 40);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(50);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 72 - 1);
         }
         §§pop().maxChars = §§pop();
         _loc1_.prompt = "username";
         _loc1_.setStyle("skinClass",FlatTextInputSkinSolo);
         _loc1_.id = "tiUsername";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tiUsername = _loc1_;
         BindingManager.executeBindings(this,"tiUsername",this.tiUsername);
         return _loc1_;
      }
      
      private final function _ProxiesCallout_TextInput4_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 93 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(32);
         if(_loc3_)
         {
            §§push((-(§§pop() + 115) + 1) * 88);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(50);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 99 + 1);
         }
         §§pop().maxChars = §§pop();
         _loc1_.prompt = "password";
         _loc1_.displayAsPassword = true;
         _loc1_.setStyle("skinClass",FlatTextInputSkinSolo);
         _loc1_.id = "tiPassword";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tiPassword = _loc1_;
         BindingManager.executeBindings(this,"tiPassword",this.tiPassword);
         return _loc1_;
      }
      
      private final function _ProxiesCallout_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 35 - 15 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push(§§pop() + 4 + 98 - 1 - 62);
         }
         §§pop().height = §§pop();
         _loc1_.label = "Add Proxy";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(16);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 1 - 59) + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___ProxiesCallout_Button1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___ProxiesCallout_Button1_click(param1:MouseEvent) : void
      {
         this.saveProxy(param1);
      }
      
      private final function _ProxiesCallout_CollapsiblePanel2_c() : CollapsiblePanel
      {
         var _loc1_:CollapsiblePanel = new CollapsiblePanel();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 91) * 61);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.expanded = false;
         _loc1_.title = "Import";
         _loc1_.layout = this._ProxiesCallout_VerticalLayout3_c();
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ProxiesCallout_Array5_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _ProxiesCallout_VerticalLayout3_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.horizontalAlign = "center";
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 16 + 52 - 1);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push((-(§§pop() + 4) + 1) * 14 + 1);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 72 - 1 + 1 + 40 - 96);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push((-(§§pop() - 1) - 24 - 112 + 1) * 41 - 1);
         }
         §§pop().paddingTop = §§pop();
         return _loc1_;
      }
      
      private final function _ProxiesCallout_Array5_c() : Array
      {
         var _loc1_:Array = [this._ProxiesCallout_TextArea1_i(),this._ProxiesCallout_Link1_c(),this._ProxiesCallout_Button2_c()];
         return _loc1_;
      }
      
      private final function _ProxiesCallout_TextArea1_i() : TextArea
      {
         var _loc1_:TextArea = new TextArea();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() - 12 + 33 + 84) + 1 - 48 + 91);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.id = "proxiesTextArea";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.proxiesTextArea = _loc1_;
         BindingManager.executeBindings(this,"proxiesTextArea",this.proxiesTextArea);
         return _loc1_;
      }
      
      private final function _ProxiesCallout_Link1_c() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "Browse for file";
         _loc1_.addEventListener("click",this.___ProxiesCallout_Link1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___ProxiesCallout_Link1_click(param1:MouseEvent) : void
      {
         this.browseForProxyList(param1);
      }
      
      private final function _ProxiesCallout_Button2_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((-§§pop() - 12) * 82);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 1));
         }
         §§pop().height = §§pop();
         _loc1_.label = "Import Proxies";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(16);
         if(_loc3_)
         {
            §§push(-(§§pop() + 16 + 24 + 93 - 1 + 103));
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___ProxiesCallout_Button2_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___ProxiesCallout_Button2_click(param1:MouseEvent) : void
      {
         this.importProxySetting(param1);
      }
      
      private final function _ProxiesCallout_Spacer2_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() * 29 + 1 + 1 + 1 + 1);
         }
         §§pop().percentHeight = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _ProxiesCallout_Button3_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() * 2 - 22));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 - 1 - 1);
         }
         §§pop().height = §§pop();
         _loc1_.label = "Delete All Proxies";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(18);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 1 - 1) + 58 + 50));
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _ProxiesCallout_Button4_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() * 48 + 28 - 1));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push((§§pop() * 30 * 52 + 21) * 8 - 6 - 90);
         }
         §§pop().height = §§pop();
         _loc1_.label = "Delete Failing Proxies";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(18);
         if(_loc2_)
         {
            §§push(((§§pop() * 3 + 1) * 85 + 1 - 53 + 1) * 34);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _ProxiesCallout_DataGrid1_i() : DataGrid
      {
         var _loc1_:DataGrid = new DataGrid();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(((§§pop() + 6 - 5) * 113 - 50 + 1) * 72);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() * 107 - 18 + 1 + 90 - 61 - 1);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.styleName = "ProxiesGridAlternatingRowColors";
         _loc1_.resizableColumns = false;
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push(§§pop() * 26 - 1 - 1 - 109 + 66 + 1);
         }
         §§pop().rowHeight = §§pop();
         _loc1_.columns = this._ProxiesCallout_ArrayList1_c();
         _loc1_.setStyle("verticalScrollPolicy","on");
         _loc1_.id = "proxiesGrid";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.proxiesGrid = _loc1_;
         BindingManager.executeBindings(this,"proxiesGrid",this.proxiesGrid);
         return _loc1_;
      }
      
      private final function _ProxiesCallout_ArrayList1_c() : ArrayList
      {
         var _loc1_:ArrayList = new ArrayList();
         _loc1_.source = [this._ProxiesCallout_ProxiesGridColumn1_c(),this._ProxiesCallout_ProxiesGridColumn2_c(),this._ProxiesCallout_ProxiesGridColumn3_c(),this._ProxiesCallout_ProxiesGridColumn4_c(),this._ProxiesCallout_ProxiesGridColumn5_c(),this._ProxiesCallout_ProxiesGridColumn6_c()];
         return _loc1_;
      }
      
      private final function _ProxiesCallout_ProxiesGridColumn1_c() : ProxiesGridColumn
      {
         var _loc1_:ProxiesGridColumn = new ProxiesGridColumn();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() - 11) * 39 - 18 + 1);
         }
         §§pop().width = §§pop();
         _loc1_.headerText = "Num Failures";
         _loc1_.headerRenderer = this._ProxiesCallout_ClassFactory1_c();
         _loc1_.dataField = "recentFailureCount";
         return _loc1_;
      }
      
      private final function _ProxiesCallout_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ProxiesHeaderRenderer;
         return _loc1_;
      }
      
      private final function _ProxiesCallout_ProxiesGridColumn2_c() : ProxiesGridColumn
      {
         var _loc1_:ProxiesGridColumn = new ProxiesGridColumn();
         §§push(_loc1_);
         §§push(125);
         if(_loc3_)
         {
            §§push(-(§§pop() * 79 - 103 + 1) - 1);
         }
         §§pop().width = §§pop();
         _loc1_.headerText = "Host";
         _loc1_.headerRenderer = this._ProxiesCallout_ClassFactory2_c();
         _loc1_.dataField = "host";
         return _loc1_;
      }
      
      private final function _ProxiesCallout_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ProxiesHeaderRenderer;
         return _loc1_;
      }
      
      private final function _ProxiesCallout_ProxiesGridColumn3_c() : ProxiesGridColumn
      {
         var _loc1_:ProxiesGridColumn = new ProxiesGridColumn();
         §§push(_loc1_);
         §§push(65);
         if(_loc3_)
         {
            §§push(((§§pop() + 59 - 1) * 81 + 86) * 90 + 1 - 59);
         }
         §§pop().width = §§pop();
         _loc1_.headerText = "Port";
         _loc1_.headerRenderer = this._ProxiesCallout_ClassFactory3_c();
         _loc1_.dataField = "port";
         return _loc1_;
      }
      
      private final function _ProxiesCallout_ClassFactory3_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ProxiesHeaderRenderer;
         return _loc1_;
      }
      
      private final function _ProxiesCallout_ProxiesGridColumn4_c() : ProxiesGridColumn
      {
         var _loc1_:ProxiesGridColumn = new ProxiesGridColumn();
         §§push(_loc1_);
         §§push(200);
         if(_loc3_)
         {
            §§push((§§pop() - 1 - 60 - 11) * 34 + 1);
         }
         §§pop().width = §§pop();
         _loc1_.labelFunction = this.authLabelFunction;
         _loc1_.headerText = "Authentication";
         _loc1_.headerRenderer = this._ProxiesCallout_ClassFactory4_c();
         _loc1_.dataField = "requiresAuth";
         return _loc1_;
      }
      
      private final function _ProxiesCallout_ClassFactory4_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ProxiesHeaderRenderer;
         return _loc1_;
      }
      
      private final function _ProxiesCallout_ProxiesGridColumn5_c() : ProxiesGridColumn
      {
         var _loc1_:ProxiesGridColumn = new ProxiesGridColumn();
         _loc1_.labelFunction = this.statusLabelFunction;
         _loc1_.headerText = "Status";
         _loc1_.headerRenderer = this._ProxiesCallout_ClassFactory5_c();
         return _loc1_;
      }
      
      private final function _ProxiesCallout_ClassFactory5_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ProxiesHeaderRenderer;
         return _loc1_;
      }
      
      private final function _ProxiesCallout_ProxiesGridColumn6_c() : ProxiesGridColumn
      {
         var _loc1_:ProxiesGridColumn = new ProxiesGridColumn();
         §§push(_loc1_);
         §§push(50);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 1 + 118);
         }
         §§pop().width = §§pop();
         _loc1_.headerRenderer = this._ProxiesCallout_ClassFactory6_c();
         _loc1_.itemRenderer = this._ProxiesCallout_ClassFactory7_c();
         _loc1_.sortable = false;
         return _loc1_;
      }
      
      private final function _ProxiesCallout_ClassFactory6_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = FlatDeleteColumnHeaderRenderer;
         return _loc1_;
      }
      
      private final function _ProxiesCallout_ClassFactory7_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = DeleteColumnRenderer;
         return _loc1_;
      }
      
      public final function ___ProxiesCallout_Callout1_mouseDownOutside(param1:FlexMouseEvent) : void
      {
         this.close();
      }
      
      public final function ___ProxiesCallout_Callout1_close(param1:PopUpEvent) : void
      {
         this.viewModel.showProxiesCallout = false;
      }
      
      private final function _ProxiesCallout_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() * 68 - 54 - 7);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = "When you add proxies, they will be used any time a Google search is required, like Google Title Competition, Avg. KC/Competitior Analysis, and checking Google Ranks.  While adding proxies is entirely optional, it can help speed up processing times and prevent CAPTCHAs." + "\n\n" + "Long Tail Pro will automatically space out requests through proxies help avoid CAPTCHAs.  However, if all proxies do become blocked by CAPTCHAs or are otherwise failing, Long Tail Pro will fall back to your own IP address for making requests, which could generate CAPTCHAs that you’ll need to manually enter to proceed." + "\n\n" + "For best results, add 10 or more private proxies.";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_ProxiesCallout_Label2.text");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(--§§pop() - 99 - 70 - 78 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return authenticateCB.selected;
         },null,"tiUsername.includeInLayout");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push((§§pop() * 12 * 100 - 1 - 1) * 58 + 72);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return authenticateCB.selected;
         },null,"tiUsername.visible");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(§§pop() + 92) - 64);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return authenticateCB.selected;
         },null,"tiPassword.includeInLayout");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 87 * 91 + 18);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return authenticateCB.selected;
         },null,"tiPassword.visible");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() + 97 + 1 + 1 + 1 - 69);
         }
         §§pop()[§§pop()] = new Binding(this,function():IList
         {
            return model.proxies;
         },null,"proxiesGrid.dataProvider");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get authenticateCB() : CheckBox
      {
         return this._430427636authenticateCB;
      }
      
      public function set authenticateCB(param1:CheckBox) : void
      {
         var _loc2_:Object = this._430427636authenticateCB;
         if(_loc2_ !== param1)
         {
            this._430427636authenticateCB = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"authenticateCB",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get proxiesGrid() : DataGrid
      {
         return this._1295651058proxiesGrid;
      }
      
      public function set proxiesGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1295651058proxiesGrid;
         if(_loc2_ !== param1)
         {
            this._1295651058proxiesGrid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"proxiesGrid",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get proxiesTextArea() : TextArea
      {
         return this._1067713786proxiesTextArea;
      }
      
      public function set proxiesTextArea(param1:TextArea) : void
      {
         var _loc2_:Object = this._1067713786proxiesTextArea;
         if(_loc2_ !== param1)
         {
            this._1067713786proxiesTextArea = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"proxiesTextArea",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tiHost() : TextInput
      {
         return this._874760771tiHost;
      }
      
      public function set tiHost(param1:TextInput) : void
      {
         var _loc2_:Object = this._874760771tiHost;
         if(_loc2_ !== param1)
         {
            this._874760771tiHost = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tiHost",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tiPassword() : TextInput
      {
         return this._843257808tiPassword;
      }
      
      public function set tiPassword(param1:TextInput) : void
      {
         var _loc2_:Object = this._843257808tiPassword;
         if(_loc2_ !== param1)
         {
            this._843257808tiPassword = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tiPassword",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tiPort() : TextInput
      {
         return this._874522474tiPort;
      }
      
      public function set tiPort(param1:TextInput) : void
      {
         var _loc2_:Object = this._874522474tiPort;
         if(_loc2_ !== param1)
         {
            this._874522474tiPort = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tiPort",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tiUsername() : TextInput
      {
         return this._1969010283tiUsername;
      }
      
      public function set tiUsername(param1:TextInput) : void
      {
         var _loc2_:Object = this._1969010283tiUsername;
         if(_loc2_ !== param1)
         {
            this._1969010283tiUsername = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tiUsername",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get authenticate() : Boolean
      {
         return this._1721116373authenticate;
      }
      
      public function set authenticate(param1:Boolean) : void
      {
         var _loc2_:Object = this._1721116373authenticate;
         if(_loc2_ !== param1)
         {
            this._1721116373authenticate = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"authenticate",_loc2_,param1));
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
