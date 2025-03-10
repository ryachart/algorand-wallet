/*
 * Copyright 2019 Algorand, Inc.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License
 */

package com.algorand.android.utils

import com.algorand.android.BuildConfig
import com.algorand.android.models.Node

const val CURRENT_DEFAULT_NODE_LIST_VERSION = 21

val defaultNodeList = listOf(
    Node(
        name = "TestNet",
        algodAddress = "https://node-testnet.aws.algodev.network/",
        algodApiKey = BuildConfig.ALGORAND_API_KEY,
        indexerAddress = "https://indexer-testnet.aws.algodev.network/",
        indexerApiKey = BuildConfig.INDEXER_API_KEY,
        isActive = true,
        isAddedDefault = true,
        networkSlug = TESTNET_NETWORK_SLUG
    ),
    Node(
        name = "MainNet",
        algodAddress = "https://node-mainnet.aws.algodev.network/",
        algodApiKey = BuildConfig.ALGORAND_API_KEY,
        indexerAddress = "https://indexer-mainnet.aws.algodev.network/",
        indexerApiKey = BuildConfig.INDEXER_API_KEY,
        isActive = false,
        isAddedDefault = true,
        networkSlug = MAINNET_NETWORK_SLUG
    )
)
