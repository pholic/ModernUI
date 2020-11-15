%hook SBFluidSwitcherGestureManager
-(bool)grabberTongue:(id)arg1 shouldAllowSecondSwipeWithEdgeLocation:(float)arg2 {
    return YES;
}
%end

%hook CCUIModularControlCenterOverlayViewController
-(void)dismissAnimated:(bool)arg1 withCompletionHandler:(id)arg2 {
    arg1 = 0;
    %orig;
}
%end

%hook SBControlCenterController
-(void)controlCenterViewController:(id)arg1 wantsHostStatusBarHidden:(bool)arg2 {
    arg2 = 0;
    %orig;
}
-(unsigned long long)presentingEdge {
    return 1;
}
%end

%hook SBHomeGestureSettings
-(bool)isHomeGestureEnabled {
    return YES;
}
%end

%hook CCSControlCenterDefaults
-(unsigned long long)_defaultPresentationGesture {
    return 1;
}
%end

%hook SpringBoard

-(bool)homeScreenSupportsRotation {
    return NO;
}
%end
