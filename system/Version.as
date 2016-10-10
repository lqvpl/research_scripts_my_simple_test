package system
{
   import mx.effects.Sequence;
   import com.hurlant.crypto.hash.MAC;
   import mx.graphics.SolidColor;
   import flash.events.Event;
   import com.enfluid.ltp.util.KeywordArrayCollection;
   import com.enfluid.ltp.model.constants.SpecialFilterConstants;
   
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
            §§push((-(§§pop() - 1) + 92 + 97 + 45) * 43 + 1);
         }
         if(§§pop() > §§pop())
         {
            _loc4_ = param1.split(param2);
            §§push(_loc3_);
            §§push();
            §§push(_loc4_);
            §§push(0);
            if(_loc5_)
            {
               §§push(-(§§pop() + 1 - 1) - 1 - 117 + 1 - 1);
            }
            §§pop().major = §§pop().parseInt(§§pop()[§§pop()]);
            §§push(_loc3_);
            §§push();
            §§push(_loc4_);
            §§push(1);
            if(_loc5_)
            {
               §§push(--(-§§pop() + 86) + 6);
            }
            §§pop().minor = §§pop().parseInt(§§pop()[§§pop()]);
            §§push(_loc3_);
            §§push();
            §§push(_loc4_);
            §§push(2);
            if(_loc6_)
            {
               §§push(-((§§pop() + 1 + 84) * 100 - 6) - 39 + 1);
            }
            §§pop().build = §§pop().parseInt(§§pop()[§§pop()]);
            §§push(_loc3_);
            §§push();
            §§push(_loc4_);
            §§push(3);
            if(_loc6_)
            {
               §§push((§§pop() + 59 - 95 - 1 - 1) * 55);
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
            §§push(§§pop() - 1 - 73 - 23 + 11 - 66 + 1);
         }
         §§pop().major = §§pop() >>> §§pop();
         §§push(_loc2_);
         §§push(param1);
         §§push(251658240);
         if(_loc4_)
         {
            §§push(§§pop() * 26 * 5 * 41);
         }
         §§push(§§pop() & §§pop());
         §§push(24);
         if(_loc4_)
         {
            §§push(-(-(§§pop() + 3 + 1) * 43 - 116) - 1);
         }
         §§pop().minor = §§pop() >>> §§pop();
         §§push(_loc2_);
         §§push(param1);
         §§push(16711680);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 61) - 22 + 1) + 58 + 33);
         }
         §§push(§§pop() & §§pop());
         §§push(16);
         if(_loc3_)
         {
            §§push((§§pop() + 45 - 1 - 1) * 64);
         }
         §§pop().build = §§pop() >>> §§pop();
         §§push(_loc2_);
         §§push(param1);
         §§push(65535);
         if(_loc4_)
         {
            §§push((§§pop() + 1 + 89) * 11);
         }
         §§pop().revision = §§pop() & §§pop();
         return _loc2_;
      }
      
      public final function toString(param1:int = 0) : String
      {
         var _loc2_:Array = null;
         §§push(param1);
         §§push(0);
         if(_loc5_)
         {
            §§push(-(§§pop() * 89 - 90 - 26));
         }
         if(§§pop() <= §§pop() || §§pop() > §§pop())
         {
            param1 = getFields();
         }
         §§push(1);
         if(_loc4_)
         {
            §§push(-(§§pop() + 1 - 1 - 41) - 1 - 60);
         }
         if(§§pop() === _loc3_)
         {
            §§push(0);
            if(_loc4_)
            {
               §§push(§§pop() * 95 - 33 - 1);
            }
         }
         else
         {
            §§push(2);
            if(_loc5_)
            {
               §§push(-(§§pop() + 75 - 1 + 2 - 1));
            }
            if(§§pop() === _loc3_)
            {
               §§push(1);
               if(_loc5_)
               {
                  §§push(--(§§pop() + 1 - 17 + 11 + 24));
               }
            }
            else
            {
               §§push(3);
               if(_loc5_)
               {
                  §§push((§§pop() - 118 - 92 - 1) * 45 * 15 - 52);
               }
               if(§§pop() === _loc3_)
               {
                  §§push(2);
                  if(_loc4_)
                  {
                     §§push(§§pop() - 1 - 1 + 1);
                  }
               }
               else
               {
                  §§push(4);
                  if(_loc5_)
                  {
                     §§push(§§pop() + 1 - 1 + 10 - 6 - 83 + 1);
                  }
                  if(§§pop() === _loc3_)
                  {
                     §§push(3);
                     if(_loc5_)
                     {
                        §§push(-(-(-§§pop() - 1) + 21));
                     }
                  }
                  else
                  {
                     §§push(4);
                     if(_loc4_)
                     {
                        §§push(((§§pop() + 1 + 1 - 1) * 11 - 44 + 10) * 66);
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
         if(_loc3_)
         {
            §§push(---(§§pop() + 107 - 44 + 1));
         }
         var _loc1_:* = §§pop();
         §§push(revision);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 1 - 45 + 1) * 119);
         }
         if(§§pop() == §§pop())
         {
            _loc1_--;
         }
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 74) - 1);
         }
         if(§§pop() == §§pop() && §§pop() == §§pop())
         {
            _loc1_--;
         }
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(--§§pop() - 62 - 13 - 1));
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
            §§push((§§pop() + 1) * 86 * 96 - 18 - 110 - 1 + 100);
         }
         §§push(§§pop() << §§pop());
         §§push(minor);
         §§push(24);
         if(_loc2_)
         {
            §§push((-(-§§pop() + 33) + 105) * 43 - 1);
         }
         §§push(§§pop() | §§pop() << §§pop());
         §§push(build);
         §§push(16);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) - 54 + 83);
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
