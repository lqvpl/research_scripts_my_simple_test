package system.hosts
{
   import system.Enum;
   import mx.graphics.SolidColor;
   
   public final class HostID extends Enum
   {
      
      public static const Flash:system.hosts.HostID = new §§pop()(§§pop(),"Flash");
      
      public static const Air:system.hosts.HostID = new §§pop()(§§pop(),"Air");
      
      public static const RedTamarin:system.hosts.HostID = new §§pop()(§§pop(),"RedTamarin");
      
      public static const Tamarin:system.hosts.HostID = new §§pop()(§§pop(),"Tamarin");
      
      public static const Unknown:system.hosts.HostID = new §§pop()(§§pop(),"Unknown");
      
      {
         §§push();
         §§push(system.hosts.HostID);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 20 + 1 - 1 + 31 + 1 + 71 - 57);
         }
         §§push();
         §§push(system.hosts.HostID);
         §§push(1);
         if(_loc1_)
         {
            §§push(-§§pop() - 1 + 1);
         }
         §§push();
         §§push(system.hosts.HostID);
         §§push(2);
         if(_loc1_)
         {
            §§push((§§pop() + 19 - 1) * 68);
         }
         §§push();
         §§push(system.hosts.HostID);
         §§push(3);
         if(_loc1_)
         {
            §§push((§§pop() - 98) * 86 + 1);
         }
         §§push();
         §§push(system.hosts.HostID);
         §§push(4);
         if(_loc1_)
         {
            §§push(-(§§pop() - 111 + 110) - 32 - 57 - 1);
         }
      }
      
      public function HostID(param1:int, param2:String)
      {
         super(param1,param2);
      }
   }
}
