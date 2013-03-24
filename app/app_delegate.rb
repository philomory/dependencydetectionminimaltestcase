class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.backgroundColor = UIColor.whiteColor
    
#    map_opts = {
#      width:  Device.screen.height,
#      height: Device.screen.width,
#      sites:  20,
#      margin: 50
#    }
#    
#    
#    opts = {
#      map_opts:   map_opts,
#      data_provider: DataProvider,
#      start: 'adventurer'
#    }
#
#    @game = Generators::FooGenerator.generate(opts)
#
#    @vc = FooViewController.alloc.initWithFoo(@game)
#    
#    @window.rootViewController = @vc  
#    @window.rootViewController.wantsFullScreenLayout = true  
   @window.makeKeyAndVisible
#    
#    @game.visit!(@game.current_site)
    
    true
  end
  
  def application(app, supportedInterfaceOrientationsForWindow:window)
    UIInterfaceOrientationMaskLandscape
  end
end
