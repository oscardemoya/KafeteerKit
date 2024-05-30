//
//  LocationManager.swift
//
//
//  Created by Oscar De Moya on 22/05/24.
//

import Foundation
import CoreLocation
import Combine

@Observable
public class LocationManager: NSObject, CLLocationManagerDelegate {
    public var location: CLLocationCoordinate2D?
    public var status: CLAuthorizationStatus?
    private var locationManager = CLLocationManager()
    
    public override init() {
        super.init()
        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.requestWhenInUseAuthorization()
    }

    public func startUpdatingLocation() {
        locationManager.startUpdatingLocation()
    }
    
    public func stopUpdatingLocation() {
        locationManager.stopUpdatingLocation()
    }
    
    @MainActor
    public func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let latestLocation = locations.first else { return }
        self.location = latestLocation.coordinate
    }
    
    @MainActor
    public func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        self.status = status
    }

    public func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        logger.error("Failed to find user's location: \(error.localizedDescription)")
    }
}

extension CLLocationCoordinate2D: Equatable {
    public static func == (lhs: CLLocationCoordinate2D, rhs: CLLocationCoordinate2D) -> Bool {
        lhs.latitude == rhs.latitude && lhs.longitude == rhs.longitude
    }
}
