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
//  TitledToggleCell.swift

import UIKit

class TitledToggleCell: BaseCollectionViewCell<TitledToggleView> {

    weak var delegate: TitledToggleCellDelegate?

    override func linkInteractors() {
        super.linkInteractors()
        contextView.delegate = self
    }
}

extension TitledToggleCell {
    func bind(_ viewModel: TitledToggleViewModel) {
        contextView.bind(viewModel)
    }
}

extension TitledToggleCell: TitledToggleViewDelegate {
    func titledToggleView(_ titledToggleView: TitledToggleView, didChangeToggleValue value: Bool) {
        delegate?.titledToggleCell(self, didChangeToggleValue: value)
    }
}

protocol TitledToggleCellDelegate: class {
    func titledToggleCell(_ titledToggleCell: TitledToggleCell, didChangeToggleValue value: Bool)
}
