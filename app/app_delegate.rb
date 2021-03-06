# class AppDelegate
#   def application(application, didFinishLaunchingWithOptions:launchOptions)
#     rootViewController = UIViewController.alloc.init
#     rootViewController.title = 'Colr'
#     rootViewController.view.backgroundColor = UIColor.whiteColor

#     navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

#     @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
#     @window.rootViewController = navigationController
#     @window.makeKeyAndVisible

#     true
#   end
# end

class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    @search_controller = SearchController.alloc.initWithNibName(nil, bundle:nil)
    @navigation_controller = UINavigationController.alloc.initWithRootViewController(@search_controller)

    @window.rootViewController = @navigation_controller
    @window.makeKeyAndVisible
    true
  end
end
