package com.enfluid.ltp.view.popups
{
   import spark.components.TitleWindow;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import com.enfluid.ltp.view.components.ProxiesGridColumn;
   import spark.components.CheckBox;
   import spark.components.DataGrid;
   import spark.components.TextArea;
   import spark.components.TextInput;
   import mx.core.IFlexModuleFactory;
   import flash.filesystem.File;
   import flash.net.FileReference;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import flash.events.Event;
   import mx.core.mx_internal;
   import spark.components.supportClasses.InteractionState;
   import flash.events.MouseEvent;
   import system.data.Map;
   import system.Reflection;
   import system.data.Iterator;
   import system.data.iterators.ArrayIterator;
   import system.data.Iterable;
   import flash.net.FileFilter;
   import com.enfluid.ltp.controller.common.SaveProxiesCommand;
   import com.enfluid.ltp.model.vo.ProxyVO;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import hr.binaria.asx3m.mapper.IMapper;
   import spark.primitives.Rect;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.constants.Constants;
   import flash.utils.ByteArray;
   import mx.core.DeferredInstanceFromFunction;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.skins.target;
   import mx.states.State;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.binding.Binding;
   import spark.components.gridClasses.GridColumn;
   import com.enfluid.ltp.util.Util;
   import spark.layouts.HorizontalLayout;
   import mx.core.IFlexDisplayObject;
   import flash.geom.Matrix;
   import spark.components.VGroup;
   import com.enfluid.ltp.controller.keywordresearch.titlecompetition.FetchMissingGlobalSearchesCommand;
   import com.enfluid.ltp.view.containers.CollapsiblePanel;
   import spark.layouts.VerticalLayout;
   import com.enfluid.ltp.view.skins.FlatUIComponents.TextInput.FlatTextInputSkinSolo;
   import mx.graphics.SolidColor;
   import spark.components.ComboBox;
   import com.enfluid.ltp.view.skins.FlatUIComponents.Combobox.GeneralComboboxSkin;
   import com.enfluid.ltp.model.constants.SpecialFilterConstants;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.graphics.GradientEntry;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import mx.collections.ArrayCollection;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.controller.keywordresearch.domainavailability.FetchMissingDomainsCommand;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   import com.enfluid.ltp.util.FileSystemOperations;
   import hr.binaria.asx3m.Asx3mer;
   import com.enfluid.ltp.controller.rankchecker.AddRankDomainCommand;
   import com.enfluid.ltp.view.components.Link;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.util.TextUtil;
   import com.enfluid.ltp.util.KeywordUtil;
   import mx.events.FlexEvent;
   import spark.components.Group;
   import com.enfluid.ltp.view.components.FilterGridColumn;
   import com.adobe.net.URI;
   import mx.controls.Spacer;
   import spark.effects.Resize;
   import mx.managers.PopUpManager;
   import com.adobe.cairngorm.popup.PopUpEvent;
   import mx.events.CloseEvent;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import spark.components.Image;
   import com.enfluid.ltp.view.renderers.headers.ProxiesHeaderRenderer;
   import system.data.maps.HashMap;
   import spark.components.PopUpAnchor;
   import com.hurlant.crypto.rsa.RSAKey;
   import com.hurlant.math.BigInteger;
   import mx.graphics.RadialGradient;
   import system.data.stacks.ArrayStack;
   import system.numeric.Mathematics;
   import com.enfluid.ltp.view.skins.FlatUIComponents.HeaderRenderer.FlatDeleteColumnHeaderRenderer;
   import com.enfluid.ltp.view.renderers.DeleteColumnRenderer;
   import com.enfluid.ltp.model.constants.Values;
   import mx.collections.IList;
   import mx.controls.scrollClasses.ScrollBar;
   import mx.events.PropertyChangeEvent;
   
   use namespace mx_internal;
   
   public final class ProxiesPopup extends TitleWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _ProxiesPopup_ProxiesGridColumn1:ProxiesGridColumn;
      
      public var _ProxiesPopup_ProxiesGridColumn2:ProxiesGridColumn;
      
      public var _ProxiesPopup_ProxiesGridColumn3:ProxiesGridColumn;
      
      public var _ProxiesPopup_ProxiesGridColumn4:ProxiesGridColumn;
      
      public var _ProxiesPopup_ProxiesGridColumn5:ProxiesGridColumn;
      
      public var _ProxiesPopup_ProxiesGridColumn6:ProxiesGridColumn;
      
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
      
      public function ProxiesPopup()
      {
         var com.enfluid.ltp.view.popups.target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._104069929model = DataModel.instance;
         this._1589792892viewModel = ViewModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._ProxiesPopup_bindingsSetup();
         var watchers:Array = [];
         com.enfluid.ltp.view.popups.target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_popups_ProxiesPopupWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ProxiesPopup[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(1000);
         if(_loc4_)
         {
            §§push(-(§§pop() * 3) + 1);
         }
         §§pop().width = §§pop();
         §§push(this);
         §§push(700);
         if(_loc4_)
         {
            §§push(-(§§pop() - 9 + 32) - 1);
         }
         §§pop().height = §§pop();
         this.title = "Manage Proxies";
         this.layout = this._ProxiesPopup_HorizontalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ProxiesPopup_Array1_c);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() * 15 * 95 - 1 + 23);
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
         ProxiesPopup._watcherSetupUtil = param1;
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
      
      private final function passwordLabelFunction(param1:Object, param2:GridColumn) : String
      {
         return Util.maskPassword(param1[param2.dataField]);
      }
      
      private final function _ProxiesPopup_HorizontalLayout1_c() : HorizontalLayout
      {
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push((-§§pop() - 1 + 105) * 13 * 30 - 1);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 16 - 54) * 72 - 1);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push((-(§§pop() + 113) + 77 + 30) * 59);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(-(-§§pop() * 20 + 108 - 55 - 1) + 45);
         }
         §§pop().paddingTop = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-§§pop() * 66 + 96);
         }
         §§pop().gap = §§pop();
         return _loc1_;
      }
      
      private final function _ProxiesPopup_Array1_c() : Array
      {
         var _loc1_:Array = [this._ProxiesPopup_VGroup1_c(),this._ProxiesPopup_DataGrid1_i()];
         return _loc1_;
      }
      
      private final function _ProxiesPopup_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         §§push(_loc1_);
         §§push(300);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 28 + 98 + 1);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 1) + 25 + 56);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push((-(§§pop() + 1) * 116 - 1) * 24);
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._ProxiesPopup_CollapsiblePanel1_c(),this._ProxiesPopup_CollapsiblePanel2_c(),this._ProxiesPopup_Spacer1_c(),this._ProxiesPopup_Button3_c(),this._ProxiesPopup_Button4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _ProxiesPopup_CollapsiblePanel1_c() : CollapsiblePanel
      {
         var _loc1_:CollapsiblePanel = new CollapsiblePanel();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() + 17 - 5 + 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.title = "Add";
         _loc1_.layout = this._ProxiesPopup_VerticalLayout1_c();
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ProxiesPopup_Array3_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _ProxiesPopup_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.horizontalAlign = "center";
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1 - 12 - 24) * 35 - 89) - 1);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 1 + 51) * 26 + 50 - 1 + 22);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(((--§§pop() - 1) * 75 + 1) * 32);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() * 75 * 13 + 1 - 56);
         }
         §§pop().paddingTop = §§pop();
         return _loc1_;
      }
      
      private final function _ProxiesPopup_Array3_c() : Array
      {
         var _loc1_:Array = [this._ProxiesPopup_TextInput1_i(),this._ProxiesPopup_TextInput2_i(),this._ProxiesPopup_CheckBox1_i(),this._ProxiesPopup_TextInput3_i(),this._ProxiesPopup_TextInput4_i(),this._ProxiesPopup_Button1_c()];
         return _loc1_;
      }
      
      private final function _ProxiesPopup_TextInput1_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((§§pop() * 66 - 1 - 1 + 1 - 1) * 110);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(32);
         if(_loc3_)
         {
            §§push(-((§§pop() + 30 + 110) * 38) * 99 + 25);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(39);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 1 - 94) * 18);
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
      
      private final function _ProxiesPopup_TextInput2_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() * 101 - 1 - 1 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(32);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 55 + 1 + 83);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(--§§pop() * 77 + 1 + 114);
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
      
      private final function _ProxiesPopup_CheckBox1_i() : CheckBox
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
      
      private final function _ProxiesPopup_TextInput3_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 106 + 34 + 1) * 31);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(32);
         if(_loc3_)
         {
            §§push(-§§pop() - 43 + 1 + 89 + 87 - 1);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(50);
         if(_loc3_)
         {
            §§push(-(§§pop() * 3 + 51 + 1));
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
      
      private final function _ProxiesPopup_TextInput4_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() - 43 + 104 - 1 + 1 - 16);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(32);
         if(_loc2_)
         {
            §§push((-§§pop() * 69 + 1) * 107);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(50);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 - 1 - 1);
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
      
      private final function _ProxiesPopup_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-§§pop() * 29 + 1 - 1 - 84 + 1 - 30);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 119 - 64);
         }
         §§pop().height = §§pop();
         _loc1_.label = "Add Proxy";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(16);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 95 - 63 + 58 - 35 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___ProxiesPopup_Button1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___ProxiesPopup_Button1_click(param1:MouseEvent) : void
      {
         this.saveProxy(param1);
      }
      
      private final function _ProxiesPopup_CollapsiblePanel2_c() : CollapsiblePanel
      {
         var _loc1_:CollapsiblePanel = new CollapsiblePanel();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((-§§pop() + 1 - 1) * 105);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.title = "Import";
         _loc1_.layout = this._ProxiesPopup_VerticalLayout2_c();
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ProxiesPopup_Array4_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _ProxiesPopup_VerticalLayout2_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.horizontalAlign = "center";
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1) - 1));
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(§§pop() - 0) - 21 - 1);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 105 - 76 + 59);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 + 0 + 48);
         }
         §§pop().paddingTop = §§pop();
         return _loc1_;
      }
      
      private final function _ProxiesPopup_Array4_c() : Array
      {
         var _loc1_:Array = [this._ProxiesPopup_TextArea1_i(),this._ProxiesPopup_Link1_c(),this._ProxiesPopup_Button2_c()];
         return _loc1_;
      }
      
      private final function _ProxiesPopup_TextArea1_i() : TextArea
      {
         var _loc1_:TextArea = new TextArea();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 92) - 1 - 1 - 112);
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
      
      private final function _ProxiesPopup_Link1_c() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "Browse for file";
         _loc1_.addEventListener("click",this.___ProxiesPopup_Link1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___ProxiesPopup_Link1_click(param1:MouseEvent) : void
      {
         this.browseForProxyList(param1);
      }
      
      private final function _ProxiesPopup_Button2_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() * 45 * 28 - 0));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 1 - 82));
         }
         §§pop().height = §§pop();
         _loc1_.label = "Import Proxies";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(16);
         if(_loc3_)
         {
            §§push(-(§§pop() * 81 * 98 - 1) * 108);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___ProxiesPopup_Button2_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___ProxiesPopup_Button2_click(param1:MouseEvent) : void
      {
         this.importProxySetting(param1);
      }
      
      private final function _ProxiesPopup_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() + 79 - 1 + 1));
         }
         §§pop().percentHeight = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _ProxiesPopup_Button3_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() * 115 + 1));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push(-(§§pop() + 50 - 87) - 1 + 56 - 1);
         }
         §§pop().height = §§pop();
         _loc1_.label = "Delete All Proxies";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(18);
         if(_loc3_)
         {
            §§push(-(§§pop() + 78 - 1));
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
      
      private final function _ProxiesPopup_Button4_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() * 35 + 1) * 101);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 + 1 - 1 - 8);
         }
         §§pop().height = §§pop();
         _loc1_.label = "Delete Failing Proxies";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(18);
         if(_loc2_)
         {
            §§push((-§§pop() + 20) * 87 + 4 + 1 + 66);
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
      
      private final function _ProxiesPopup_DataGrid1_i() : DataGrid
      {
         var _loc1_:DataGrid = new DataGrid();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() * 55 - 44 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((-(§§pop() * 105 + 1) - 82) * 112);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.styleName = "ProxiesGridAlternatingRowColors";
         _loc1_.resizableColumns = false;
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push(--(§§pop() + 83 - 47 + 1 + 26) * 18);
         }
         §§pop().rowHeight = §§pop();
         _loc1_.columns = this._ProxiesPopup_ArrayList1_c();
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
      
      private final function _ProxiesPopup_ArrayList1_c() : ArrayList
      {
         var _loc1_:ArrayList = new ArrayList();
         _loc1_.source = [this._ProxiesPopup_ProxiesGridColumn1_i(),this._ProxiesPopup_ProxiesGridColumn2_i(),this._ProxiesPopup_ProxiesGridColumn3_i(),this._ProxiesPopup_ProxiesGridColumn4_i(),this._ProxiesPopup_ProxiesGridColumn5_i(),this._ProxiesPopup_ProxiesGridColumn6_i(),this._ProxiesPopup_ProxiesGridColumn7_c()];
         return _loc1_;
      }
      
      private final function _ProxiesPopup_ProxiesGridColumn1_i() : ProxiesGridColumn
      {
         var _loc1_:ProxiesGridColumn = new ProxiesGridColumn();
         _loc1_.headerText = "Num Failures";
         _loc1_.headerRenderer = this._ProxiesPopup_ClassFactory1_c();
         _loc1_.dataField = "recentFailureCount";
         this._ProxiesPopup_ProxiesGridColumn1 = _loc1_;
         BindingManager.executeBindings(this,"_ProxiesPopup_ProxiesGridColumn1",this._ProxiesPopup_ProxiesGridColumn1);
         return _loc1_;
      }
      
      private final function _ProxiesPopup_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ProxiesHeaderRenderer;
         return _loc1_;
      }
      
      private final function _ProxiesPopup_ProxiesGridColumn2_i() : ProxiesGridColumn
      {
         var _loc1_:ProxiesGridColumn = new ProxiesGridColumn();
         _loc1_.headerText = "Host";
         _loc1_.headerRenderer = this._ProxiesPopup_ClassFactory2_c();
         _loc1_.dataField = "host";
         this._ProxiesPopup_ProxiesGridColumn2 = _loc1_;
         BindingManager.executeBindings(this,"_ProxiesPopup_ProxiesGridColumn2",this._ProxiesPopup_ProxiesGridColumn2);
         return _loc1_;
      }
      
      private final function _ProxiesPopup_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ProxiesHeaderRenderer;
         return _loc1_;
      }
      
      private final function _ProxiesPopup_ProxiesGridColumn3_i() : ProxiesGridColumn
      {
         var _loc1_:ProxiesGridColumn = new ProxiesGridColumn();
         _loc1_.headerText = "Port";
         _loc1_.headerRenderer = this._ProxiesPopup_ClassFactory3_c();
         _loc1_.dataField = "port";
         this._ProxiesPopup_ProxiesGridColumn3 = _loc1_;
         BindingManager.executeBindings(this,"_ProxiesPopup_ProxiesGridColumn3",this._ProxiesPopup_ProxiesGridColumn3);
         return _loc1_;
      }
      
      private final function _ProxiesPopup_ClassFactory3_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ProxiesHeaderRenderer;
         return _loc1_;
      }
      
      private final function _ProxiesPopup_ProxiesGridColumn4_i() : ProxiesGridColumn
      {
         var _loc1_:ProxiesGridColumn = new ProxiesGridColumn();
         _loc1_.headerText = "Auth Required";
         _loc1_.headerRenderer = this._ProxiesPopup_ClassFactory4_c();
         _loc1_.dataField = "requiresAuth";
         this._ProxiesPopup_ProxiesGridColumn4 = _loc1_;
         BindingManager.executeBindings(this,"_ProxiesPopup_ProxiesGridColumn4",this._ProxiesPopup_ProxiesGridColumn4);
         return _loc1_;
      }
      
      private final function _ProxiesPopup_ClassFactory4_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ProxiesHeaderRenderer;
         return _loc1_;
      }
      
      private final function _ProxiesPopup_ProxiesGridColumn5_i() : ProxiesGridColumn
      {
         var _loc1_:ProxiesGridColumn = new ProxiesGridColumn();
         _loc1_.headerText = "Username";
         _loc1_.headerRenderer = this._ProxiesPopup_ClassFactory5_c();
         _loc1_.dataField = "authUsername";
         this._ProxiesPopup_ProxiesGridColumn5 = _loc1_;
         BindingManager.executeBindings(this,"_ProxiesPopup_ProxiesGridColumn5",this._ProxiesPopup_ProxiesGridColumn5);
         return _loc1_;
      }
      
      private final function _ProxiesPopup_ClassFactory5_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ProxiesHeaderRenderer;
         return _loc1_;
      }
      
      private final function _ProxiesPopup_ProxiesGridColumn6_i() : ProxiesGridColumn
      {
         var _loc1_:ProxiesGridColumn = new ProxiesGridColumn();
         _loc1_.headerRenderer = this._ProxiesPopup_ClassFactory6_c();
         _loc1_.headerText = "Password";
         _loc1_.labelFunction = this.passwordLabelFunction;
         _loc1_.dataField = "authPassword";
         this._ProxiesPopup_ProxiesGridColumn6 = _loc1_;
         BindingManager.executeBindings(this,"_ProxiesPopup_ProxiesGridColumn6",this._ProxiesPopup_ProxiesGridColumn6);
         return _loc1_;
      }
      
      private final function _ProxiesPopup_ClassFactory6_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ProxiesHeaderRenderer;
         return _loc1_;
      }
      
      private final function _ProxiesPopup_ProxiesGridColumn7_c() : ProxiesGridColumn
      {
         var _loc1_:ProxiesGridColumn = new ProxiesGridColumn();
         _loc1_.headerRenderer = this._ProxiesPopup_ClassFactory7_c();
         _loc1_.itemRenderer = this._ProxiesPopup_ClassFactory8_c();
         _loc1_.sortable = false;
         return _loc1_;
      }
      
      private final function _ProxiesPopup_ClassFactory7_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = FlatDeleteColumnHeaderRenderer;
         return _loc1_;
      }
      
      private final function _ProxiesPopup_ClassFactory8_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = DeleteColumnRenderer;
         return _loc1_;
      }
      
      private final function _ProxiesPopup_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(-§§pop() - 15 + 1) + 98) + 60);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return authenticateCB.selected;
         },null,"tiUsername.includeInLayout");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((-§§pop() + 64 - 1) * 59 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return authenticateCB.selected;
         },null,"tiUsername.visible");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() - 2 + 2 + 1 - 59);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return authenticateCB.selected;
         },null,"tiPassword.includeInLayout");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 1) + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return authenticateCB.selected;
         },null,"tiPassword.visible");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(--(-((§§pop() - 22) * 7) + 59 + 106));
         }
         §§pop()[§§pop()] = new Binding(this,function():IList
         {
            return model.proxies;
         },null,"proxiesGrid.dataProvider");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(--(-((§§pop() - 101) * 49) - 1) - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return (proxiesGrid.width - ScrollBar.THICKNESS) * 0.15;
         },null,"_ProxiesPopup_ProxiesGridColumn1.width");
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push((-((§§pop() + 1) * 82) - 1 + 1 - 1) * 79);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return (proxiesGrid.width - ScrollBar.THICKNESS) * 0.17;
         },null,"_ProxiesPopup_ProxiesGridColumn2.width");
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push(--(-((§§pop() * 3 - 54) * 68) + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return (proxiesGrid.width - ScrollBar.THICKNESS) * 0.12;
         },null,"_ProxiesPopup_ProxiesGridColumn3.width");
         §§push(result);
         §§push(8);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 33) - 1 - 1 + 117));
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return (proxiesGrid.width - ScrollBar.THICKNESS) * 0.15;
         },null,"_ProxiesPopup_ProxiesGridColumn4.width");
         §§push(result);
         §§push(9);
         if(_loc2_)
         {
            §§push(--§§pop() - 1 - 93 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return (proxiesGrid.width - ScrollBar.THICKNESS) * 0.17;
         },null,"_ProxiesPopup_ProxiesGridColumn5.width");
         §§push(result);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(§§pop() - 43 + 80) - 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return (proxiesGrid.width - ScrollBar.THICKNESS) * 0.17;
         },null,"_ProxiesPopup_ProxiesGridColumn6.width");
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
