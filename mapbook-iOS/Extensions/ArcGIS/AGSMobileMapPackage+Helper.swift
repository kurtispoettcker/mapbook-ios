//// Copyright 2020 Gagandeep Singh
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import ArcGIS

extension AGSMobileMapPackage {
    
    var downloadDate: Date? {
        try? FileManager.default.attributesOfItem(atPath: fileURL.path)[FileAttributeKey.creationDate] as? Date
    }
    
    var size: Int64? {
        try? (FileManager.default.attributesOfItem(atPath: fileURL.path)[FileAttributeKey.size] as? NSNumber)?.int64Value
    }
}