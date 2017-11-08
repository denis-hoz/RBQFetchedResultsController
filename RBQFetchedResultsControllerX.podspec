Pod::Spec.new do |s|
  s.name         = "RBQFetchedResultsControllerX"
  s.version      = "5.0.4"
  s.summary      = "Drop-in replacement for NSFetchedResultsController backed by Realm. (Fork of RBQFetchedResultsController)"
  s.description  = <<-DESC
                    The RBQFetchedResultsController (FRC) is a replacement for NSFetchedResultsController when used in conjunction with RBQRealmNotificationManager and RBQRealmChangeLogger. The controller and delegate follow the same paradigm as NSFetchedResultsController, and allow the developer to monitor changes of an RLMObject subclass.

                    RBQFetchedResultsController supports tableview sections and implements a drop-in replacement delegate to pass the changes to the tableview for section and row animations.
                   DESC

  s.homepage     = "https://github.com/ladeiko/RBQFetchedResultsControllerX"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Siarhei Ladzeika" => "sergey.ladeiko@gmail.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/ladeiko/RBQFetchedResultsControllerX.git", :tag => "v#{s.version}", :submodules => true }
  s.source_files  = [
    "RBQFetchedResultsController/Source/**/*.{h,m}",
    "RBQFetchedResultsController/RBQFRC.h"
  ]
  s.exclude_files = "RBQFetchedResultsController/Source/Swift/*"
  s.requires_arc = true
  s.dependency "Realm", ">=1.0.0"
  s.dependency "RBQSafeRealmObject"
  s.dependency "RealmUtilities"
end
