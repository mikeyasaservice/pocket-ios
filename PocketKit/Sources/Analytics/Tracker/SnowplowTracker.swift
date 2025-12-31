// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

import class SnowplowTracker.SelfDescribing

public protocol SnowplowTracker: Sendable {
    func track(event: SelfDescribing)
    func addPersistentEntity(_ entity: Entity)
    func resetPersistentEntities(_ entities: [Entity])
}

/// No-op tracker for when Snowplow is disabled or crashes
/// Used for Stash Pop - we don't need Mozilla's analytics
public final class NoOpSnowplowTracker: SnowplowTracker {
    public init() {}
    public func track(event: SelfDescribing) {}
    public func addPersistentEntity(_ entity: Entity) {}
    public func resetPersistentEntities(_ entities: [Entity]) {}
}
