package system.hosts
{
   import system.Enum;
   
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
            §§push(-§§pop() * 38 * 51 + 1);
         }
         §§push();
         §§push(system.hosts.HostID);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 15 - 1) * 84);
         }
         §§push();
         §§push(system.hosts.HostID);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() + 24 + 44 - 61 + 21);
         }
         §§push();
         §§push(system.hosts.HostID);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(-§§pop() * 93));
         }
         §§push();
         §§push(system.hosts.HostID);
         §§push(4);
         if(_loc2_)
         {
            §§push(-(-(§§pop() * 104) + 1) - 86 + 48);
         }
      }
      
      public function HostID(param1:int, param2:String)
      {
         super(param1,param2);
      }
   }
}
