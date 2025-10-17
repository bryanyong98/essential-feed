//
//  FeedStoreSpecs.swift
//  EssentialFeedTests
//
//  Created by Bryan Yong on 17/10/2025.
//

import Foundation

protocol FeedStoreSpecs {
    func test_retrieve_deliversEmptyOnEmptyCache()
    func test_retrieve_hasNoSideEffectsOnEmptyCache()
    func test_retrieveAfterInsertingToEmptyCache_deliversInsertedValue()
    func test_retrieveTwiceAfterInserting_hasNoSideEffects()

    func test_insert_overridesPreviouslyInsertedCacheValues()

    func test_delete_hasNosideEffectOnEmptyCache()
    func test_delete_emptiesPreviouslyInsertedCache()

    func test_storeSideEffects_runSerially()
}

protocol FailableRetreieveFeedStoreSpecs: FeedStoreSpecs {
    func test_retrieve_deliversFailureOnRetrievalError()
    func test_retrieve_hasNoSideEffectsOnFailure()
}

protocol FailableInsertFeedStoreSpecs: FeedStoreSpecs {
    func test_insert_deliversErrorOnInsertionError()
    func test_insert_hasNoSideEffectsOnInsertionError()
}

protocol FailableDeleteFeedStoreSpecs: FeedStoreSpecs {
    func test_delete_hasNosideEffectOnEmptyCache()
}
