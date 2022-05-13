//
//  Animation.swift
//  SpringHW
//
//  Created by Василий Полторак on 13.05.2022.
//

import Spring

class Animation {
    let preset: Spring.AnimationPreset!
    let curve: Spring.AnimationCurve!
    let force: CGFloat!
    let duration: CGFloat!
    let delay: CGFloat!
    
    init(preset: Spring.AnimationPreset,
         curve: Spring.AnimationCurve,
         force: CGFloat,
         duration: CGFloat,
         delay: CGFloat) {
        self.preset = preset
        self.curve = curve
        self.force = force
        self.duration = duration
        self.delay = delay
    }
}
