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
//  TransactionControllerDelegate.swift

import Magpie

protocol TransactionControllerDelegate: class {
    func transactionController(_ transactionController: TransactionController, didComposedTransactionDataFor draft: TransactionSendDraft?)
    func transactionController(_ transactionController: TransactionController, didFailedComposing error: HIPError<TransactionError>)
    func transactionController(_ transactionController: TransactionController, didCompletedTransaction id: TransactionID)
    func transactionController(_ transactionController: TransactionController, didFailedTransaction error: HIPError<TransactionError>)
    func transactionControllerDidFailToSignWithLedger(_ transactionController: TransactionController)
}

extension TransactionControllerDelegate where Self: BaseViewController {
    func transactionController(
        _ transactionController: TransactionController,
        didComposedTransactionDataFor draft: TransactionSendDraft?
    ) { }
    
    func transactionController(_ transactionController: TransactionController, didFailedComposing error: HIPError<TransactionError>) { }
    
    func transactionController(_ transactionController: TransactionController, didCompletedTransaction id: TransactionID) { }
    
    func transactionController(_ transactionController: TransactionController, didFailedTransaction error: HIPError<TransactionError>) { }
    
    func transactionControllerDidFailToSignWithLedger(_ transactionController: TransactionController) { }
}
