//
//  MKPointAnnotation-ObservableObject.swift
//  BucketList
//
//  Created by Larry Nguyen on 9/25/20.
//

// Allow for attaching title and subtitle to pins

import MapKit

extension MKPointAnnotation: ObservableObject {
    public var wrappedTitle: String {
        get {
            self.title ?? "Unknown value"
        }
        set {
            title = newValue
        }
    }
    
    public var wrappedSubtitle: String {
        get {
            self.subtitle ?? "Unknown value"
        }
        set {
            subtitle = newValue
        }
    }
}
