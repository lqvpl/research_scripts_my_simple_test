package system.reflection
{
   import system.Enum;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import hr.binaria.asx3m.converters.IUnmarshallingContext;
   import system.data.maps.HashMap;
   
   public final class FilterType extends Enum
   {
      
      public static const declaredOnly:system.reflection.FilterType = new §§pop()(§§pop(),"declaredOnly");
      
      public static const none:system.reflection.FilterType = new §§pop()(§§pop(),"none");
      
      public static const traitOnly:system.reflection.FilterType = new §§pop()(§§pop(),"traitOnly");
      
      public static const includeStatic:system.reflection.FilterType = new §§pop()(§§pop(),"includeStatic");
      
      public static const prototypeOnly:system.reflection.FilterType = new §§pop()(§§pop(),"prototypeOnly");
      
      {
         §§push();
         §§push(system.reflection.FilterType);
         §§push(0);
         if(_loc1_)
         {
            §§push((-§§pop() + 103 + 1 - 112) * 57 - 88 + 1);
         }
         §§push();
         §§push(system.reflection.FilterType);
         §§push(1);
         if(_loc1_)
         {
            §§push((§§pop() * 1 - 1) * 52 + 1 + 1 - 1);
         }
         §§push();
         §§push(system.reflection.FilterType);
         §§push(2);
         if(_loc1_)
         {
            §§push((§§pop() - 1 - 32 + 45) * 108 + 47 - 1);
         }
         §§push();
         §§push(system.reflection.FilterType);
         §§push(16);
         if(_loc1_)
         {
            §§push(§§pop() * 37 + 93 - 1);
         }
         §§push();
         §§push(system.reflection.FilterType);
         §§push(256);
         if(_loc2_)
         {
            §§push(§§pop() - 20 + 1 + 1 - 1);
         }
      }
      
      public function FilterType(param1:int = 0, param2:String = "")
      {
         super(param1,param2);
      }
      
      public function get useTraitInfo() : Boolean
      {
         return (valueOf() & 15) != 1;
      }
      
      public function get showDeclared() : Boolean
      {
         return (valueOf() & 240) >>> 4 <= 1;
      }
      
      public function get usePrototypeInfo() : Boolean
      {
         return (valueOf() & 15) < 2;
      }
      
      public function get showStatic() : Boolean
      {
         return (valueOf() & 3840) >>> 8 != 0;
      }
      
      public function get showInherited() : Boolean
      {
         return (valueOf() & 240) >>> 4 == 0;
      }
   }
}
