// Copyright 2019 Algorand, Inc.

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at

//    http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

//
//  AppConfiguration.swift

import Foundation

class AppConfiguration {

    let api: AlgorandAPI
    let session: Session
    
    init(api: AlgorandAPI, session: Session) {
        self.api = api
        self.session = session
    }
    
    func all() -> ViewControllerConfiguration {
        let configuration = ViewControllerConfiguration(api: api, session: session)
        return configuration
    }
    
    func clearAll() {
        self.session.clear(.keychain)
        self.session.clear(.defaults)
    }
}
