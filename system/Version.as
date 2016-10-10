package system
{
   import system.data.Iterator;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.target;
   import com.enfluid.ltp.view.AddYourOwnKeywordsSection;
   import mx.core.DeferredInstanceFromFunction;
   import mx.binding.Binding;
   import flash.utils.ByteArray;
   import spark.components.HGroup;
   import mx.states.State;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.graphics.SolidColor;
   import mx.binding.BindingManager;
   import flash.utils.Proxy;
   import com.enfluid.ltp.view.containers.CheckBoxCollapsiblePanel;
   
   use namespace mx_internal;
   
   public final class Version implements Equatable
   {
       
      
      private var _major:uint;
      
      private var _maxBuild:uint = 255;
      
      private var _maxMinor:uint = 15;
      
      private var _maxMajor:uint = 15;
      
      private var _separator:String = ".";
      
      private var _maxRevision:uint = 65535;
      
      private var _build:uint;
      
      private var _revision:uint;
      
      private var _minor:uint;
      
      public function Version(param1:uint = 0, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         var _loc5_:Version = null;
         super();
         if(param1 > _maxMajor && §§pop() == §§pop() && §§pop() == §§pop() && §§pop() == §§pop())
         {
            _loc5_ = Version.fromNumber(param1);
            param1 = _loc5_.major;
            param2 = _loc5_.minor;
            param3 = _loc5_.build;
            param4 = _loc5_.revision;
         }
         this.major = param1;
         this.minor = param2;
         this.build = param3;
         this.revision = param4;
      }
      
      public static function fromString(param1:String = "", param2:String = ".") : Version
      {
         var _loc4_:Array = null;
         var _loc3_:Version = new Version();
         if(param1 == "" || param1 == null)
         {
            return _loc3_;
         }
         §§push(param1.indexOf(param2));
         §§push(-1);
         if(_loc6_)
         {
            §§push(--(-§§pop() - 1 + 50) + 98 + 1);
         }
         if(§§pop() > §§pop())
         {
            _loc4_ = param1.split(param2);
            §§push(_loc3_);
            §§push();
            §§push(_loc4_);
            §§push(0);
            if(_loc6_)
            {
               §§push((§§pop() + 1) * 91 - 1 - 38);
            }
            §§pop().major = §§pop().parseInt(§§pop()[§§pop()]);
            §§push(_loc3_);
            §§push();
            §§push(_loc4_);
            §§push(1);
            if(_loc6_)
            {
               §§push(-((§§pop() + 1 - 109) * 76));
            }
            §§pop().minor = §§pop().parseInt(§§pop()[§§pop()]);
            §§push(_loc3_);
            §§push();
            §§push(_loc4_);
            §§push(2);
            if(_loc5_)
            {
               §§push(-§§pop() * 18 * 112 + 1);
            }
            §§pop().build = §§pop().parseInt(§§pop()[§§pop()]);
            §§push(_loc3_);
            §§push();
            §§push(_loc4_);
            §§push(3);
            if(_loc6_)
            {
               §§push(§§pop() - 29 - 6 - 1);
            }
            §§pop().revision = §§pop().parseInt(§§pop()[§§pop()]);
         }
         else
         {
            _loc3_.major = parseInt(param1);
         }
         return _loc3_;
      }
      
      public static function fromNumber(param1:Number = 0) : Version
      {
         var _loc2_:Version = new Version();
         if(isNaN(param1) || §§pop() == §§pop() || §§pop() < §§pop() || param1 == Number.MAX_VALUE || param1 == Number.POSITIVE_INFINITY || param1 == Number.NEGATIVE_INFINITY)
         {
            return _loc2_;
         }
         §§push(_loc2_);
         §§push(param1);
         §§push(28);
         if(_loc3_)
         {
            §§push(-(-(§§pop() * 110) - 1 - 68));
         }
         §§pop().major = §§pop() >>> §§pop();
         §§push(_loc2_);
         §§push(param1);
         §§push(251658240);
         if(_loc4_)
         {
            §§push(§§pop() * 71 + 50 - 63 + 1 + 1);
         }
         §§push(§§pop() & §§pop());
         §§push(24);
         if(_loc3_)
         {
            §§push(--(§§pop() - 1) - 1);
         }
         §§pop().minor = §§pop() >>> §§pop();
         §§push(_loc2_);
         §§push(param1);
         §§push(16711680);
         if(_loc3_)
         {
            §§push((-((§§pop() + 45 + 1) * 114) + 1) * 109 + 55);
         }
         §§push(§§pop() & §§pop());
         §§push(16);
         if(_loc3_)
         {
            §§push(((§§pop() - 1 - 1 - 1) * 90 + 74) * 0 - 34);
         }
         §§pop().build = §§pop() >>> §§pop();
         §§push(_loc2_);
         §§push(param1);
         §§push(65535);
         if(_loc3_)
         {
            §§push(-(§§pop() * 105 + 110) * 25);
         }
         §§pop().revision = §§pop() & §§pop();
         return _loc2_;
      }
      
      public final function toString(param1:int = 0) : String
      {
         var _loc2_:Array = null;
         §§push(param1);
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() + 1) * 18 + 113);
         }
         if(§§pop() <= §§pop() || §§pop() > §§pop())
         {
            param1 = getFields();
         }
         §§push(1);
         if(_loc4_)
         {
            §§push(--§§pop() + 46);
         }
         if(§§pop() === _loc3_)
         {
            §§push(0);
            if(_loc5_)
            {
               §§push(-(§§pop() + 1) - 1 + 81 - 1 + 29 - 1);
            }
         }
         else
         {
            §§push(2);
            if(_loc4_)
            {
               §§push(-§§pop() - 8 + 118 - 1);
            }
            if(§§pop() === _loc3_)
            {
               §§push(1);
               if(_loc5_)
               {
                  §§push((-(§§pop() + 1) - 1) * 70);
               }
            }
            else
            {
               §§push(3);
               if(_loc5_)
               {
                  §§push((§§pop() + 102 + 1) * 102);
               }
               if(§§pop() === _loc3_)
               {
                  §§push(2);
                  if(_loc5_)
                  {
                     §§push((§§pop() * 73 + 1 - 83 - 1) * 6);
                  }
               }
               else
               {
                  §§push(4);
                  if(_loc4_)
                  {
                     §§push((--(§§pop() + 49) - 1 - 66) * 71 - 1);
                  }
                  if(§§pop() === _loc3_)
                  {
                     §§push(3);
                     if(_loc5_)
                     {
                        §§push(-§§pop() + 3 - 1);
                     }
                  }
                  else
                  {
                     §§push(4);
                     if(_loc4_)
                     {
                        §§push((-(-§§pop() * 22) + 1 + 101) * 29 + 48);
                     }
                  }
               }
            }
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = [major];
               break;
            case 1:
               _loc2_ = [major,minor];
               break;
            case 2:
               _loc2_ = [major,minor,build];
               break;
            case 3:
            default:
               _loc2_ = [major,minor,build,revision];
         }
         return _loc2_.join(_separator);
      }
      
      public function set revision(param1:uint) : void
      {
         _revision = Math.min(param1,_maxRevision);
      }
      
      public function get revision() : uint
      {
         return _revision;
      }
      
      public function set build(param1:uint) : void
      {
         _build = Math.min(param1,_maxBuild);
      }
      
      public function set minor(param1:uint) : void
      {
         _minor = Math.min(param1,_maxMinor);
      }
      
      public function get build() : uint
      {
         return _build;
      }
      
      private final function getFields() : int
      {
         §§push(4);
         if(_loc2_)
         {
            §§push(-(-(-§§pop() + 12 - 1) - 84 + 29));
         }
         var _loc1_:* = §§pop();
         §§push(revision);
         §§push(0);
         if(_loc3_)
         {
            §§push((-(-§§pop() - 63) - 86) * 2 - 118 - 1);
         }
         if(§§pop() == §§pop())
         {
            _loc1_--;
         }
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(-((§§pop() - 1) * 12) - 91) + 102 + 36);
         }
         if(§§pop() == §§pop() && §§pop() == §§pop())
         {
            _loc1_--;
         }
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() * 54 + 1) * 59);
         }
         if(§§pop() == §§pop() && §§pop() == §§pop())
         {
            _loc1_--;
         }
         return _loc1_;
      }
      
      public function set major(param1:uint) : void
      {
         _major = Math.min(param1,_maxMajor);
      }
      
      public function get minor() : uint
      {
         return _minor;
      }
      
      public final function valueOf() : uint
      {
         §§push(major);
         §§push(28);
         if(_loc1_)
         {
            §§push(-(§§pop() + 27 - 114) + 105 + 108 + 1 + 41);
         }
         §§push(§§pop() << §§pop());
         §§push(minor);
         §§push(24);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 + 42 + 1);
         }
         §§push(§§pop() | §§pop() << §§pop());
         §§push(build);
         §§push(16);
         if(_loc2_)
         {
            §§push(((-§§pop() + 99) * 6 + 1) * 56 - 1);
         }
         return §§pop() | §§pop() << §§pop() | revision;
      }
      
      public function get major() : uint
      {
         return _major;
      }
      
      public function equals(param1:*) : Boolean
      {
         if(!(param1 is Version))
         {
            return false;
         }
         if(param1.major == major && param1.minor == minor && param1.build == build && param1.revision == revision)
         {
            return true;
         }
         return false;
      }
   }
}
