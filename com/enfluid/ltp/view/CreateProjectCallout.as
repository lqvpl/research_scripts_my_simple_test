package com.enfluid.ltp.view
{
   import spark.components.Callout;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.BorderContainer;
   import spark.components.Button;
   import com.enfluid.ltp.view.components.HelpButton;
   import spark.components.Label;
   import mx.states.SetProperty;
   import mx.controls.Spacer;
   import spark.components.ComboBox;
   import com.enfluid.ltp.view.components.ToggleSwitch;
   import spark.components.TextInput;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.model.vo.CountryVO;
   import com.enfluid.ltp.model.vo.LanguageVO;
   import mx.events.FlexMouseEvent;
   import com.enfluid.ltp.model.constants.Countries;
   import com.enfluid.ltp.model.constants.Languages;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.AddProjectCommand;
   import mx.controls.Alert;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.UpdateProjectCommand;
   import mx.events.FlexEvent;
   import spark.events.IndexChangeEvent;
   import flash.events.MouseEvent;
   import mx.core.DeferredInstanceFromFunction;
   import mx.binding.BindingManager;
   import spark.layouts.VerticalLayout;
   import spark.components.HGroup;
   import com.enfluid.ltp.view.skins.FlatUIComponents.TextInput.FlatTextInputSkinSolo;
   import mx.controls.HRule;
   import com.enfluid.ltp.view.skins.FlatUIComponents.Combobox.GeneralComboboxSkin;
   import spark.events.DropDownEvent;
   import com.enfluid.ltp.view.skins.FlatTextInputSkin;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import spark.events.PopUpEvent;
   import spark.effects.AddAction;
   import mx.binding.Binding;
   import mx.graphics.IFill;
   import mx.graphics.SolidColor;
   import mx.collections.IList;
   import com.enfluid.ltp.model.constants.Constants;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.states.State;
   import mx.states.SetEventHandler;
   import mx.states.SetStyle;
   import mx.states.AddItems;
   
   use namespace mx_internal;
   
   public final class CreateProjectCallout extends Callout implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _2034074601_CreateProjectCallout_BorderContainer1:BorderContainer;
      
      private var _1252835886_CreateProjectCallout_Button1:Button;
      
      public var _CreateProjectCallout_HelpButton1:HelpButton;
      
      public var _CreateProjectCallout_HelpButton2:HelpButton;
      
      public var _CreateProjectCallout_Label2:Label;
      
      public var _CreateProjectCallout_Label6:Label;
      
      private var _1563800583_CreateProjectCallout_SetProperty1:SetProperty;
      
      private var _1563800584_CreateProjectCallout_SetProperty2:SetProperty;
      
      private var _1563800585_CreateProjectCallout_SetProperty3:SetProperty;
      
      private var _1563800586_CreateProjectCallout_SetProperty4:SetProperty;
      
      private var _1563800587_CreateProjectCallout_SetProperty5:SetProperty;
      
      private var _1563800588_CreateProjectCallout_SetProperty6:SetProperty;
      
      private var _1563800589_CreateProjectCallout_SetProperty7:SetProperty;
      
      public var _CreateProjectCallout_Spacer2:Spacer;
      
      private var _1421731748cmbCountries:ComboBox;
      
      private var _1256041021cmbLanguages:ComboBox;
      
      private var _525022962cmbSearchNetwork:ComboBox;
      
      private var _1406603658includeAdultIdeas:ToggleSwitch;
      
      private var _430419332languageLabel:Label;
      
      private var _1835616724tiProjectTitle:TextInput;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _309310695project:ProjectVO;
      
      private var _104069929model:DataModel;
      
      private var _1589792892viewModel:ViewModel;
      
      private var _1333019115defaultCountry:CountryVO;
      
      private var _384498873defaultLanguage:LanguageVO;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function CreateProjectCallout()
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
         var bindings:Array = this._CreateProjectCallout_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_CreateProjectCalloutWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return CreateProjectCallout[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.styleName = "createProjectCallout";
         this.verticalPosition = "middle";
         this.horizontalPosition = "after";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._CreateProjectCallout_Array2_c);
         this.addEventListener("creationComplete",this.___CreateProjectCallout_Callout1_creationComplete);
         this.addEventListener("mouseDownOutside",this.___CreateProjectCallout_Callout1_mouseDownOutside);
         this.addEventListener("open",this.___CreateProjectCallout_Callout1_open);
         this.addEventListener("close",this.___CreateProjectCallout_Callout1_close);
         var _CreateProjectCallout_Label2_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._CreateProjectCallout_Label2_i);
         §§push();
         §§push();
         §§push("name");
         §§push("create");
         §§push("overrides");
         §§push(new SetEventHandler().initializeFromObject({
            "target":"tiProjectTitle",
            "name":"enter",
            "handlerFunction":this.__tiProjectTitle_enter_create
         }));
         §§push(new SetProperty().initializeFromObject({
            "target":"cmbCountries",
            "name":"enabled",
            "value":true
         }));
         §§push(this._CreateProjectCallout_SetProperty3 = SetProperty(new SetProperty().initializeFromObject({
            "target":"cmbCountries",
            "name":"selectedItem",
            "value":undefined
         })));
         §§push(new SetEventHandler().initializeFromObject({
            "target":"cmbCountries",
            "name":"change",
            "handlerFunction":this.__cmbCountries_change_create
         }));
         §§push(new SetProperty().initializeFromObject({
            "target":"cmbLanguages",
            "name":"enabled",
            "value":true
         }));
         §§push(this._CreateProjectCallout_SetProperty5 = SetProperty(new SetProperty().initializeFromObject({
            "target":"cmbLanguages",
            "name":"selectedItem",
            "value":undefined
         })));
         §§push(new SetEventHandler().initializeFromObject({
            "target":"cmbLanguages",
            "name":"change",
            "handlerFunction":this.__cmbLanguages_change_create
         }));
         §§push(new SetProperty().initializeFromObject({
            "target":"cmbSearchNetwork",
            "name":"enabled",
            "value":true
         }));
         §§push(new SetProperty().initializeFromObject({
            "target":"cmbSearchNetwork",
            "name":"selectedItem",
            "value":"Google"
         }));
         §§push(new SetProperty().initializeFromObject({
            "target":"includeAdultIdeas",
            "name":"enabled",
            "value":true
         }));
         §§push(new SetStyle());
         §§push("target");
         §§push("_CreateProjectCallout_Button1");
         §§push("name");
         §§push("fontSize");
         §§push("value");
         §§push(25);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 1) * 67);
         }
         §§pop().states = [new §§pop().State(null),new State({
            "name":"edit",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_CreateProjectCallout_Label2_factory,
               "destination":"_CreateProjectCallout_BorderContainer1",
               "position":"after",
               "relativeTo":["_CreateProjectCallout_Spacer2"]
            }),this._CreateProjectCallout_SetProperty1 = SetProperty(new SetProperty().initializeFromObject({
               "target":"tiProjectTitle",
               "name":"text",
               "value":undefined
            })),new SetProperty().initializeFromObject({
               "target":"cmbCountries",
               "name":"enabled",
               "value":false
            }),this._CreateProjectCallout_SetProperty2 = SetProperty(new SetProperty().initializeFromObject({
               "target":"cmbCountries",
               "name":"selectedItem",
               "value":undefined
            })),new SetProperty().initializeFromObject({
               "target":"cmbLanguages",
               "name":"enabled",
               "value":false
            }),this._CreateProjectCallout_SetProperty4 = SetProperty(new SetProperty().initializeFromObject({
               "target":"cmbLanguages",
               "name":"selectedItem",
               "value":undefined
            })),new SetProperty().initializeFromObject({
               "target":"cmbSearchNetwork",
               "name":"enabled",
               "value":false
            }),this._CreateProjectCallout_SetProperty6 = SetProperty(new SetProperty().initializeFromObject({
               "target":"cmbSearchNetwork",
               "name":"selectedItem",
               "value":undefined
            })),new SetProperty().initializeFromObject({
               "target":"includeAdultIdeas",
               "name":"enabled",
               "value":false
            }),this._CreateProjectCallout_SetProperty7 = SetProperty(new SetProperty().initializeFromObject({
               "target":"includeAdultIdeas",
               "name":"selected",
               "value":undefined
            })),new SetProperty().initializeFromObject({
               "target":"_CreateProjectCallout_Button1",
               "name":"label",
               "value":"Save Project"
            }),new SetEventHandler().initializeFromObject({
               "target":"_CreateProjectCallout_Button1",
               "name":"click",
               "handlerFunction":this.___CreateProjectCallout_Button1_click_edit
            })]
         })];
         BindingManager.executeBindings(this,"_CreateProjectCallout_SetProperty3",this._CreateProjectCallout_SetProperty3);
         BindingManager.executeBindings(this,"_CreateProjectCallout_SetProperty5",this._CreateProjectCallout_SetProperty5);
         BindingManager.executeBindings(this,"_CreateProjectCallout_SetProperty1",this._CreateProjectCallout_SetProperty1);
         BindingManager.executeBindings(this,"_CreateProjectCallout_SetProperty2",this._CreateProjectCallout_SetProperty2);
         BindingManager.executeBindings(this,"_CreateProjectCallout_SetProperty4",this._CreateProjectCallout_SetProperty4);
         BindingManager.executeBindings(this,"_CreateProjectCallout_SetProperty6",this._CreateProjectCallout_SetProperty6);
         BindingManager.executeBindings(this,"_CreateProjectCallout_SetProperty7",this._CreateProjectCallout_SetProperty7);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 27) * 45 + 54 + 1 - 1);
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
         CreateProjectCallout._watcherSetupUtil = param1;
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
      
      protected final function mouseDownOutsideHandler(param1:FlexMouseEvent) : void
      {
         if(this.model.projects && §§pop() > §§pop())
         {
            this.close();
         }
      }
      
      private final function setProject() : void
      {
         if(this.viewModel.isProjectEditMode)
         {
            this.project = this.model.selectedProject;
         }
         else
         {
            this.defaultCountry = this.model.defaultConfiguration && this.model.defaultConfiguration.country?this.model.defaultConfiguration.country:Countries.UNITED_STATES;
            this.defaultLanguage = this.model.defaultConfiguration && this.model.defaultConfiguration.language?this.model.defaultConfiguration.language:Languages.ENGLISH;
         }
      }
      
      private final function addProject() : void
      {
         if(!this.projectNameCorrect(this.tiProjectTitle.text))
         {
            return;
         }
         var _loc1_:ProjectVO = new ProjectVO();
         _loc1_.title = this.tiProjectTitle.text;
         _loc1_.country = this.cmbCountries.selectedItem;
         _loc1_.searchNetwork = this.cmbSearchNetwork.selectedItem;
         _loc1_.language = this.cmbLanguages.selectedItem;
         _loc1_.includeAdultAreas = this.includeAdultIdeas.selected;
         this.tiProjectTitle.text = "";
         new AddProjectCommand(_loc1_).execute();
      }
      
      private final function projectNameCorrect(param1:String) : Boolean
      {
         if(param1 && §§pop() > §§pop())
         {
            return true;
         }
         Alert.okLabel = "OK";
         §§push(Alert);
         §§push(130);
         if(_loc2_)
         {
            §§push(-((§§pop() + 113 - 119) * 22 * 57) * 107 - 1);
         }
         §§pop().buttonWidth = §§pop();
         §§push(Alert);
         §§push(30);
         if(_loc2_)
         {
            §§push(-(§§pop() - 68 + 72) - 20);
         }
         §§pop().buttonHeight = §§pop();
         Alert.show("Please check project name"," Operation Failed ");
         return false;
      }
      
      private final function updateProject() : void
      {
         if(!this.projectNameCorrect(this.tiProjectTitle.text))
         {
            return;
         }
         var _loc1_:String = this.project.title;
         this.project.title = this.tiProjectTitle.text;
         this.project.country = this.cmbCountries.selectedItem;
         this.project.searchNetwork = this.cmbSearchNetwork.selectedItem;
         this.project.language = this.cmbLanguages.selectedItem;
         this.project.includeAdultAreas = this.includeAdultIdeas.selected;
         this.tiProjectTitle.text = "";
         new UpdateProjectCommand().execute();
      }
      
      public final function __tiProjectTitle_enter_create(param1:FlexEvent) : void
      {
         this.addProject();
      }
      
      public final function __cmbCountries_change_create(param1:IndexChangeEvent) : void
      {
         this.defaultCountry = this.cmbCountries.selectedItem;
      }
      
      public final function __cmbLanguages_change_create(param1:IndexChangeEvent) : void
      {
         this.defaultLanguage = this.cmbLanguages.selectedItem;
      }
      
      public final function ___CreateProjectCallout_Button1_click_create(param1:MouseEvent) : void
      {
         this.addProject();
      }
      
      public final function ___CreateProjectCallout_Button1_click_edit(param1:MouseEvent) : void
      {
         this.updateProject();
      }
      
      private final function _CreateProjectCallout_Array2_c() : Array
      {
         var _loc1_:Array = [this._CreateProjectCallout_BorderContainer1_i()];
         return _loc1_;
      }
      
      private final function _CreateProjectCallout_BorderContainer1_i() : BorderContainer
      {
         var _loc1_:BorderContainer = new BorderContainer();
         _loc1_.layout = this._CreateProjectCallout_VerticalLayout1_c();
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._CreateProjectCallout_Array3_c);
         _loc1_.setStyle("borderVisible",false);
         _loc1_.id = "_CreateProjectCallout_BorderContainer1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CreateProjectCallout_BorderContainer1 = _loc1_;
         BindingManager.executeBindings(this,"_CreateProjectCallout_BorderContainer1",this._CreateProjectCallout_BorderContainer1);
         return _loc1_;
      }
      
      private final function _CreateProjectCallout_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         §§push(_loc1_);
         §§push(15);
         if(_loc3_)
         {
            §§push(---(-(§§pop() - 31) + 101));
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc2_)
         {
            §§push(-(§§pop() * 111 - 25) * 46);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc3_)
         {
            §§push((-((§§pop() + 1) * 95) + 1 - 1 + 57) * 50);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 42 - 34);
         }
         §§pop().paddingTop = §§pop();
         return _loc1_;
      }
      
      private final function _CreateProjectCallout_Array3_c() : Array
      {
         var _loc1_:Array = [this._CreateProjectCallout_HGroup1_c(),this._CreateProjectCallout_Spacer1_c(),this._CreateProjectCallout_HRule1_c(),this._CreateProjectCallout_Spacer2_i(),this._CreateProjectCallout_HGroup2_c(),this._CreateProjectCallout_HGroup3_c(),this._CreateProjectCallout_HGroup4_c(),this._CreateProjectCallout_HGroup5_c(),this._CreateProjectCallout_Spacer3_c(),this._CreateProjectCallout_Button1_i()];
         return _loc1_;
      }
      
      private final function _CreateProjectCallout_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() + 10) + 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._CreateProjectCallout_Label1_c(),this._CreateProjectCallout_TextInput1_i()];
         §§push(_loc1_);
         §§push("fontSize");
         §§push(18);
         if(_loc3_)
         {
            §§push(-(§§pop() * 75 * 110 * 73));
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CreateProjectCallout_Label1_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Project Title:";
         §§push(_loc1_);
         §§push("color");
         §§push(1118481);
         if(_loc3_)
         {
            §§push((§§pop() - 112) * 40 * 75 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","right");
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CreateProjectCallout_TextInput1_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         §§push(_loc1_);
         §§push(200);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 + 1 + 1 - 93 + 1);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(50);
         if(_loc3_)
         {
            §§push((-(§§pop() + 115) + 1) * 88);
         }
         §§pop().maxChars = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(6710886);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 99 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("skinClass",FlatTextInputSkinSolo);
         _loc1_.id = "tiProjectTitle";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tiProjectTitle = _loc1_;
         BindingManager.executeBindings(this,"tiProjectTitle",this.tiProjectTitle);
         return _loc1_;
      }
      
      private final function _CreateProjectCallout_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 35 - 15 - 1);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CreateProjectCallout_HRule1_c() : HRule
      {
         var _loc1_:HRule = new HRule();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-§§pop() + 98 - 1 - 62);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("strokeColor");
         §§push(13158600);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 1 - 59) + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("strokeWidth");
         §§push(1);
         if(_loc3_)
         {
            §§push((-§§pop() - 1 + 1 + 91) * 61);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CreateProjectCallout_Spacer2_i() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 16 + 52 - 1);
         }
         §§pop().height = §§pop();
         _loc1_.id = "_CreateProjectCallout_Spacer2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CreateProjectCallout_Spacer2 = _loc1_;
         BindingManager.executeBindings(this,"_CreateProjectCallout_Spacer2",this._CreateProjectCallout_Spacer2);
         return _loc1_;
      }
      
      private final function _CreateProjectCallout_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(300);
         if(_loc3_)
         {
            §§push((--§§pop() + 1) * 14);
         }
         §§pop().width = §§pop();
         _loc1_.text = "*Only Project Title can be changed after creating a project.  To change other settings, please create a new project.";
         §§push(_loc1_);
         §§push("color");
         §§push(1118481);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 + 72 - 1 + 1 + 40);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(14);
         if(_loc2_)
         {
            §§push(-(§§pop() * 119 - 1) - 24);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "_CreateProjectCallout_Label2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CreateProjectCallout_Label2 = _loc1_;
         BindingManager.executeBindings(this,"_CreateProjectCallout_Label2",this._CreateProjectCallout_Label2);
         return _loc1_;
      }
      
      private final function _CreateProjectCallout_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((§§pop() * 41 - 1) * 16 + 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._CreateProjectCallout_Label3_c(),this._CreateProjectCallout_ComboBox1_i(),this._CreateProjectCallout_HelpButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CreateProjectCallout_Label3_c() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() + 33 + 84) + 1 - 48);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.text = "Country:";
         §§push(_loc1_);
         §§push("color");
         §§push(1118481);
         if(_loc2_)
         {
            §§push(-(§§pop() + 50 + 11 - 1));
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","right");
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CreateProjectCallout_ComboBox1_i() : ComboBox
      {
         var _loc1_:ComboBox = new ComboBox();
         §§push(_loc1_);
         §§push(200);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 1 - 116 + 1));
         }
         §§pop().width = §§pop();
         _loc1_.labelField = "name";
         _loc1_.prompt = "Select Country";
         §§push(_loc1_);
         §§push("color");
         §§push(6710886);
         if(_loc3_)
         {
            §§push(-(§§pop() + 16 + 24 + 93 - 1 + 103));
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("skinClass",GeneralComboboxSkin);
         _loc1_.addEventListener("open",this.__cmbCountries_open);
         _loc1_.id = "cmbCountries";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cmbCountries = _loc1_;
         BindingManager.executeBindings(this,"cmbCountries",this.cmbCountries);
         return _loc1_;
      }
      
      public final function __cmbCountries_open(param1:DropDownEvent) : void
      {
         §§push(this.cmbCountries.dropDown);
         §§push(250);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 29 + 1);
         }
         §§pop().width = §§pop();
         §§push(this.cmbCountries.dropDown);
         §§push(600);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 102 - 35 + 1 - 22);
         }
         §§pop().height = §§pop();
      }
      
      private final function _CreateProjectCallout_HelpButton1_i() : HelpButton
      {
         var _loc1_:HelpButton = new HelpButton();
         _loc1_.helpTitle = "Project Country";
         §§push(_loc1_);
         §§push("color");
         §§push(6710886);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 - 1 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "_CreateProjectCallout_HelpButton1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CreateProjectCallout_HelpButton1 = _loc1_;
         BindingManager.executeBindings(this,"_CreateProjectCallout_HelpButton1",this._CreateProjectCallout_HelpButton1);
         return _loc1_;
      }
      
      private final function _CreateProjectCallout_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 1) + 58 + 50));
         }
         §§pop().percentWidth = §§pop();
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._CreateProjectCallout_Label4_i(),this._CreateProjectCallout_ComboBox2_i(),this._CreateProjectCallout_HelpButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CreateProjectCallout_Label4_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() * 48 + 28 - 1));
         }
         §§pop().percentWidth = §§pop();
         _loc1_.text = "Language:";
         §§push(_loc1_);
         §§push("color");
         §§push(1118481);
         if(_loc2_)
         {
            §§push((§§pop() * 30 * 52 + 21) * 8 - 6 - 90);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","right");
         _loc1_.id = "languageLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.languageLabel = _loc1_;
         BindingManager.executeBindings(this,"languageLabel",this.languageLabel);
         return _loc1_;
      }
      
      private final function _CreateProjectCallout_ComboBox2_i() : ComboBox
      {
         var _loc1_:ComboBox = new ComboBox();
         §§push(_loc1_);
         §§push(200);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 1) * 85 + 1);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(--((§§pop() + 1) * 34) + 48 + 91);
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.labelField = "name";
         _loc1_.prompt = "Select Language";
         §§push(_loc1_);
         §§push("color");
         §§push(6710886);
         if(_loc2_)
         {
            §§push((§§pop() * 91 + 1 + 1) * 72 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("skinClass",GeneralComboboxSkin);
         _loc1_.addEventListener("open",this.__cmbLanguages_open);
         _loc1_.id = "cmbLanguages";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cmbLanguages = _loc1_;
         BindingManager.executeBindings(this,"cmbLanguages",this.cmbLanguages);
         return _loc1_;
      }
      
      public final function __cmbLanguages_open(param1:DropDownEvent) : void
      {
         §§push(this.cmbLanguages.dropDown);
         §§push(400);
         if(_loc3_)
         {
            §§push(§§pop() - 18 + 1 + 90 - 61 - 1);
         }
         §§pop().height = §§pop();
      }
      
      private final function _CreateProjectCallout_HelpButton2_i() : HelpButton
      {
         var _loc1_:HelpButton = new HelpButton();
         _loc1_.helpTitle = "Project Language";
         §§push(_loc1_);
         §§push("color");
         §§push(6710886);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 - 1 - 109 + 66);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "_CreateProjectCallout_HelpButton2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CreateProjectCallout_HelpButton2 = _loc1_;
         BindingManager.executeBindings(this,"_CreateProjectCallout_HelpButton2",this._CreateProjectCallout_HelpButton2);
         return _loc1_;
      }
      
      private final function _CreateProjectCallout_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((-§§pop() - 19) * 83 - 1 - 18 + 1 + 65);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._CreateProjectCallout_Label5_c(),this._CreateProjectCallout_ComboBox3_i(),this._CreateProjectCallout_HelpButton3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CreateProjectCallout_Label5_c() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() - 103 - 20) - 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.text = "Search Network:";
         §§push(_loc1_);
         §§push("color");
         §§push(1118481);
         if(_loc2_)
         {
            §§push((§§pop() - 99 + 59 - 1) * 81 + 86);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","right");
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CreateProjectCallout_ComboBox3_i() : ComboBox
      {
         var _loc1_:ComboBox = new ComboBox();
         §§push(_loc1_);
         §§push(200);
         if(_loc2_)
         {
            §§push(-(§§pop() - 59 + 1) * 117);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(50);
         if(_loc3_)
         {
            §§push(-((§§pop() + 79) * 83));
         }
         §§pop().baseline = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(6710886);
         if(_loc2_)
         {
            §§push((§§pop() - 82) * 108 - 51 + 1 + 118);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("skinClass",GeneralComboboxSkin);
         _loc1_.id = "cmbSearchNetwork";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cmbSearchNetwork = _loc1_;
         BindingManager.executeBindings(this,"cmbSearchNetwork",this.cmbSearchNetwork);
         return _loc1_;
      }
      
      private final function _CreateProjectCallout_HelpButton3_c() : HelpButton
      {
         var _loc1_:HelpButton = new HelpButton();
         _loc1_.helpTitle = "Search Network";
         _loc1_.helpContent = "Determines whether the number of reported searches for a keyword should be only those that happened on Google itself, or should also include searches performed on Google\'s search partners.";
         §§push(_loc1_);
         §§push("color");
         §§push(6710886);
         if(_loc3_)
         {
            §§push((--§§pop() + 65) * 68);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CreateProjectCallout_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(---(§§pop() - 107) - 99);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._CreateProjectCallout_Label6_i(),this._CreateProjectCallout_ToggleSwitch1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CreateProjectCallout_Label6_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Include Adult Ideas:";
         §§push(_loc1_);
         §§push("color");
         §§push(1118481);
         if(_loc3_)
         {
            §§push((§§pop() + 98 + 18) * 12 * 100);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","right");
         _loc1_.id = "_CreateProjectCallout_Label6";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CreateProjectCallout_Label6 = _loc1_;
         BindingManager.executeBindings(this,"_CreateProjectCallout_Label6",this._CreateProjectCallout_Label6);
         return _loc1_;
      }
      
      private final function _CreateProjectCallout_ToggleSwitch1_i() : ToggleSwitch
      {
         var _loc1_:ToggleSwitch = new ToggleSwitch();
         §§push(_loc1_);
         §§push(22);
         if(_loc3_)
         {
            §§push(-§§pop() + 72 - 65 + 92);
         }
         §§pop().height = §§pop();
         _loc1_.styleName = "standardToggleSwitch";
         _loc1_.selectedLabel = "On";
         _loc1_.deselectedLabel = "Off";
         _loc1_.id = "includeAdultIdeas";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.includeAdultIdeas = _loc1_;
         BindingManager.executeBindings(this,"includeAdultIdeas",this.includeAdultIdeas);
         return _loc1_;
      }
      
      private final function _CreateProjectCallout_Spacer3_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(15);
         if(_loc2_)
         {
            §§push(((§§pop() + 1 + 1 - 1) * 87 * 91 + 18) * 97);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CreateProjectCallout_Button1_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(305);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 - 69);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(40);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 1 - 38 + 1 + 68 + 15);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(6710886);
         if(_loc2_)
         {
            §§push(((§§pop() + 38) * 116 - 77) * 56 + 56);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.id = "_CreateProjectCallout_Button1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CreateProjectCallout_Button1 = _loc1_;
         BindingManager.executeBindings(this,"_CreateProjectCallout_Button1",this._CreateProjectCallout_Button1);
         return _loc1_;
      }
      
      public final function ___CreateProjectCallout_Callout1_creationComplete(param1:FlexEvent) : void
      {
         this.tiProjectTitle.setFocus();
      }
      
      public final function ___CreateProjectCallout_Callout1_mouseDownOutside(param1:FlexMouseEvent) : void
      {
         this.mouseDownOutsideHandler(param1);
      }
      
      public final function ___CreateProjectCallout_Callout1_open(param1:PopUpEvent) : void
      {
         this.setProject();
         this.tiProjectTitle.setFocus();
      }
      
      public final function ___CreateProjectCallout_Callout1_close(param1:PopUpEvent) : void
      {
         this.viewModel.showCreateProjectCallout = false;
      }
      
      private final function _CreateProjectCallout_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(((-(§§pop() - 1) + 51) * 10 + 1) * 24);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = !!viewModel.isProjectEditMode?"edit":"create";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.currentState");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(-((§§pop() * 49 + 1) * 59 + 47));
         }
         §§pop()[§§pop()] = new Binding(this,function():IFill
         {
            §§push();
            §§push(16119542);
            if(_loc2_)
            {
               §§push(-(§§pop() + 25 - 1) + 81 - 1);
            }
            return new §§pop().SolidColor(§§pop());
         },null,"_CreateProjectCallout_BorderContainer1.backgroundFill");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-((§§pop() + 25 - 1) * 51) - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return project.title;
         },null,"_CreateProjectCallout_SetProperty1.value");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 1 + 26 + 1 + 1) * 117);
         }
         §§pop()[§§pop()] = new Binding(this,function():IList
         {
            return Countries.ALL;
         },null,"cmbCountries.dataProvider");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(((§§pop() + 1) * 49 - 1 + 1) * 65 * 107);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return project.country;
         },null,"_CreateProjectCallout_SetProperty2.value");
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(§§pop() * 57) - 1 - 28 - 81 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return defaultCountry;
         },null,"_CreateProjectCallout_SetProperty3.value");
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push(-§§pop() - 45 + 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = "The Project Country affects two aspects of your project:\n\n1. Local Search Volume will reflect the number of montly searches ocurring for that keyword in the selected country.\n\n2. When analyzing competition, the top 10 Google results for the seleted country will be fetched.";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CreateProjectCallout_HelpButton1.helpContent");
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push((§§pop() - 72 + 1) * 43 - 3);
         }
         §§pop()[§§pop()] = new Binding(this,function():IList
         {
            return Languages.ALL;
         },null,"cmbLanguages.dataProvider");
         §§push(result);
         §§push(8);
         if(_loc3_)
         {
            §§push(§§pop() + 51 - 72 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return project.language;
         },null,"_CreateProjectCallout_SetProperty4.value");
         §§push(result);
         §§push(9);
         if(_loc3_)
         {
            §§push(§§pop() - 9 - 1 - 13);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return defaultLanguage;
         },null,"_CreateProjectCallout_SetProperty5.value");
         §§push(result);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() - 63 + 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = "The Project Language affects two aspects of your project:\n\n1. Keywords will be generated using the selected language.\n\n2. When analyzing competition, the top 10 Google results will be fetched for users who have Google Search set to the selected language.\n\nIn most cases, you will want to use the offical language of the selected country, unless you specifically want to target a population speaking another language within that country.";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CreateProjectCallout_HelpButton2.helpContent");
         §§push(result);
         §§push(11);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 24 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():IList
         {
            return Constants.NETWORKS;
         },null,"cmbSearchNetwork.dataProvider");
         §§push(result);
         §§push(12);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 + 103 - 14);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return project.searchNetwork;
         },null,"_CreateProjectCallout_SetProperty6.value");
         §§push(result);
         §§push(13);
         if(_loc2_)
         {
            §§push((§§pop() - 12 - 85) * 37 * 33 + 102 + 1 - 47);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return languageLabel.width;
         },null,"_CreateProjectCallout_Label6.width");
         §§push(result);
         §§push(14);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 14 - 76 + 1 + 1) * 10);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return project.includeAdultAreas;
         },null,"_CreateProjectCallout_SetProperty7.value");
         §§push(result);
         §§push(15);
         if(_loc3_)
         {
            §§push(-(§§pop() - 45 + 18 + 1) + 92 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !!Constants.STATE_CREATE_PROJECT?true:false;
         },null,"includeAdultIdeas.visible");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get _CreateProjectCallout_BorderContainer1() : BorderContainer
      {
         return this._2034074601_CreateProjectCallout_BorderContainer1;
      }
      
      public function set _CreateProjectCallout_BorderContainer1(param1:BorderContainer) : void
      {
         var _loc2_:Object = this._2034074601_CreateProjectCallout_BorderContainer1;
         if(_loc2_ !== param1)
         {
            this._2034074601_CreateProjectCallout_BorderContainer1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CreateProjectCallout_BorderContainer1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _CreateProjectCallout_Button1() : Button
      {
         return this._1252835886_CreateProjectCallout_Button1;
      }
      
      public function set _CreateProjectCallout_Button1(param1:Button) : void
      {
         var _loc2_:Object = this._1252835886_CreateProjectCallout_Button1;
         if(_loc2_ !== param1)
         {
            this._1252835886_CreateProjectCallout_Button1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CreateProjectCallout_Button1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _CreateProjectCallout_SetProperty1() : SetProperty
      {
         return this._1563800583_CreateProjectCallout_SetProperty1;
      }
      
      public function set _CreateProjectCallout_SetProperty1(param1:SetProperty) : void
      {
         var _loc2_:Object = this._1563800583_CreateProjectCallout_SetProperty1;
         if(_loc2_ !== param1)
         {
            this._1563800583_CreateProjectCallout_SetProperty1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CreateProjectCallout_SetProperty1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _CreateProjectCallout_SetProperty2() : SetProperty
      {
         return this._1563800584_CreateProjectCallout_SetProperty2;
      }
      
      public function set _CreateProjectCallout_SetProperty2(param1:SetProperty) : void
      {
         var _loc2_:Object = this._1563800584_CreateProjectCallout_SetProperty2;
         if(_loc2_ !== param1)
         {
            this._1563800584_CreateProjectCallout_SetProperty2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CreateProjectCallout_SetProperty2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _CreateProjectCallout_SetProperty3() : SetProperty
      {
         return this._1563800585_CreateProjectCallout_SetProperty3;
      }
      
      public function set _CreateProjectCallout_SetProperty3(param1:SetProperty) : void
      {
         var _loc2_:Object = this._1563800585_CreateProjectCallout_SetProperty3;
         if(_loc2_ !== param1)
         {
            this._1563800585_CreateProjectCallout_SetProperty3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CreateProjectCallout_SetProperty3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _CreateProjectCallout_SetProperty4() : SetProperty
      {
         return this._1563800586_CreateProjectCallout_SetProperty4;
      }
      
      public function set _CreateProjectCallout_SetProperty4(param1:SetProperty) : void
      {
         var _loc2_:Object = this._1563800586_CreateProjectCallout_SetProperty4;
         if(_loc2_ !== param1)
         {
            this._1563800586_CreateProjectCallout_SetProperty4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CreateProjectCallout_SetProperty4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _CreateProjectCallout_SetProperty5() : SetProperty
      {
         return this._1563800587_CreateProjectCallout_SetProperty5;
      }
      
      public function set _CreateProjectCallout_SetProperty5(param1:SetProperty) : void
      {
         var _loc2_:Object = this._1563800587_CreateProjectCallout_SetProperty5;
         if(_loc2_ !== param1)
         {
            this._1563800587_CreateProjectCallout_SetProperty5 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CreateProjectCallout_SetProperty5",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _CreateProjectCallout_SetProperty6() : SetProperty
      {
         return this._1563800588_CreateProjectCallout_SetProperty6;
      }
      
      public function set _CreateProjectCallout_SetProperty6(param1:SetProperty) : void
      {
         var _loc2_:Object = this._1563800588_CreateProjectCallout_SetProperty6;
         if(_loc2_ !== param1)
         {
            this._1563800588_CreateProjectCallout_SetProperty6 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CreateProjectCallout_SetProperty6",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _CreateProjectCallout_SetProperty7() : SetProperty
      {
         return this._1563800589_CreateProjectCallout_SetProperty7;
      }
      
      public function set _CreateProjectCallout_SetProperty7(param1:SetProperty) : void
      {
         var _loc2_:Object = this._1563800589_CreateProjectCallout_SetProperty7;
         if(_loc2_ !== param1)
         {
            this._1563800589_CreateProjectCallout_SetProperty7 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CreateProjectCallout_SetProperty7",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cmbCountries() : ComboBox
      {
         return this._1421731748cmbCountries;
      }
      
      public function set cmbCountries(param1:ComboBox) : void
      {
         var _loc2_:Object = this._1421731748cmbCountries;
         if(_loc2_ !== param1)
         {
            this._1421731748cmbCountries = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cmbCountries",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cmbLanguages() : ComboBox
      {
         return this._1256041021cmbLanguages;
      }
      
      public function set cmbLanguages(param1:ComboBox) : void
      {
         var _loc2_:Object = this._1256041021cmbLanguages;
         if(_loc2_ !== param1)
         {
            this._1256041021cmbLanguages = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cmbLanguages",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cmbSearchNetwork() : ComboBox
      {
         return this._525022962cmbSearchNetwork;
      }
      
      public function set cmbSearchNetwork(param1:ComboBox) : void
      {
         var _loc2_:Object = this._525022962cmbSearchNetwork;
         if(_loc2_ !== param1)
         {
            this._525022962cmbSearchNetwork = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cmbSearchNetwork",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get includeAdultIdeas() : ToggleSwitch
      {
         return this._1406603658includeAdultIdeas;
      }
      
      public function set includeAdultIdeas(param1:ToggleSwitch) : void
      {
         var _loc2_:Object = this._1406603658includeAdultIdeas;
         if(_loc2_ !== param1)
         {
            this._1406603658includeAdultIdeas = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"includeAdultIdeas",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get languageLabel() : Label
      {
         return this._430419332languageLabel;
      }
      
      public function set languageLabel(param1:Label) : void
      {
         var _loc2_:Object = this._430419332languageLabel;
         if(_loc2_ !== param1)
         {
            this._430419332languageLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"languageLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tiProjectTitle() : TextInput
      {
         return this._1835616724tiProjectTitle;
      }
      
      public function set tiProjectTitle(param1:TextInput) : void
      {
         var _loc2_:Object = this._1835616724tiProjectTitle;
         if(_loc2_ !== param1)
         {
            this._1835616724tiProjectTitle = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tiProjectTitle",_loc2_,param1));
            }
         }
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
      
      [Bindable(event="propertyChange")]
      private function get defaultCountry() : CountryVO
      {
         return this._1333019115defaultCountry;
      }
      
      private function set defaultCountry(param1:CountryVO) : void
      {
         var _loc2_:Object = this._1333019115defaultCountry;
         if(_loc2_ !== param1)
         {
            this._1333019115defaultCountry = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"defaultCountry",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get defaultLanguage() : LanguageVO
      {
         return this._384498873defaultLanguage;
      }
      
      private function set defaultLanguage(param1:LanguageVO) : void
      {
         var _loc2_:Object = this._384498873defaultLanguage;
         if(_loc2_ !== param1)
         {
            this._384498873defaultLanguage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"defaultLanguage",_loc2_,param1));
            }
         }
      }
   }
}
