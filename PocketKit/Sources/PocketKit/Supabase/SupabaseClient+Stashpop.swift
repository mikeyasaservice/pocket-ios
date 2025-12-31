// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

import Foundation
import Supabase

/// Shared Supabase client for Stash Pop
/// Replaces the legacy Pocket API with Supabase backend
public enum StashPopSupabase {
    /// The shared Supabase client instance
    public static let client: SupabaseClient = {
        guard let url = URL(string: Keys.shared.supabaseURL) else {
            fatalError("Invalid Supabase URL: \(Keys.shared.supabaseURL)")
        }
        return SupabaseClient(
            supabaseURL: url,
            supabaseKey: Keys.shared.supabaseAnonKey
        )
    }()
}
